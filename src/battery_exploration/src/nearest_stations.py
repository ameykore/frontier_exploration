#!/usr/bin/env python3

import rospy
import math
import std_msgs.msg as msg
from std_msgs.msg import Float32MultiArray
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal, MoveBaseActionFeedback
from gazebo_msgs.msg import ModelState
from gazebo_msgs.srv import SpawnModel, SpawnModelRequest

# Constants
position = None
battery_locations = [[0.0,0.0],[-2.0,-3.0],[2.0,-4.0],[2.0,-1.0],[-2.0,2.0],[1.0,3.0]]

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
            nearest_station = station_position

    return nearest_station

def publish_battery_location(location):
    pub = rospy.Publisher('battery_location', Float32MultiArray, queue_size=10)

    msg = Float32MultiArray(data=location)
    pub.publish(msg)

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
