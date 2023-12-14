#!/usr/bin/env python3

import rospy
import math
import std_msgs.msg as msg
from std_msgs.msg import Float32MultiArray
from battery_exploration.msg import battery_station
from move_base_msgs.msg import MoveBaseActionFeedback


# Constants
position = None
battery_locations = [[0.0,0.0],[-2.0,-3.0],[2.0,-4.0],[2.0,-1.0],[-2.0,2.0],[1.0,3.0]]

#msg instance
ros_msg = battery_station()

def calculate_distance(x1, y1, x2, y2):
    ans = math.sqrt((x2 - x1)**2 + (y2 - y1)**2)
    return ans 

def find_nearest_station(rosbot_position, charging_stations):

    # print(f"Postion: {position}\n")
    nearest_station = None
    min_distance = float('inf')
    for station_position in charging_stations:
        distance = calculate_distance(rosbot_position.position.x, rosbot_position.position.y, station_position[0], station_position[1])
        print(f"Distance: {distance}\n")
        if distance < min_distance:
            min_distance = distance
            ros_msg.distance = min_distance
            nearest_station = station_position

    return nearest_station

def publish_battery_location(location):
    global position
    pub = rospy.Publisher('battery_location', battery_station, queue_size=10)
    ros_msg.x = location[0]
    ros_msg.y = location[1]
    ros_msg.z = position.position.z
    ros_msg.orientation_x = position.orientation.x
    ros_msg.orientation_y = position.orientation.y
    ros_msg.orientation_z = position.orientation.z
    ros_msg.orientation_w = position.orientation.w
    pub.publish(ros_msg)

def feedback_callback(feedback):
    global position
    position = feedback.feedback.base_position.pose
    battery_location = find_nearest_station(position, battery_locations)
    print(f"battery_location: {battery_location}")
    publish_battery_location(battery_location)
    # print(f"Postion: {position}\n")

if __name__ == '__main__':
    try:
        rospy.init_node('Goal_station', anonymous=True)
        rospy.Subscriber("move_base/feedback", MoveBaseActionFeedback, feedback_callback)
        
        # # Continue listening until the node is shut down
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo("Navigation test finished.")
