#!/usr/bin/env python3

import rospy
import math
import std_msgs.msg as msg
from std_msgs.msg import Float32MultiArray
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal, MoveBaseActionFeedback


# Constants
position = 0
battry_locations = [[0,0],[-2,-3],[2,-4],[2,-1],[-2,2],[1,3]]

def calculate_distance(x1, y1, x2, y2):
    return math.sqrt((x2 - x1)*2 + (y2 - y1)*2)

def find_nearest_station(rosbot_position, charging_stations):
    nearest_station = None
    min_distance = float('inf')

    for station_position in charging_stations:
        distance = calculate_distance(rosbot_position.position.x, rosbot_position.position.y, station_position[0], station_position[1])
        if distance < min_distance:
            min_distance = distance
            nearest_station = station_position

    return nearest_station

def publish_battery_location(location):
    rospy.init_node('battery_location_publisher', anonymous=True)
    pub = rospy.Publisher('battery_location', Float32MultiArray, queue_size=10)

    msg = Float32MultiArray(data=location)
    pub.publish(msg)
    rospy.sleep(1)  # Sleep for 1 second

def feedback_callback(feedback):
    global position
    position = feedback.feedback.base_position.pose

if __name__ == '__main__':
    try:
        rospy.init_node('Goal_station', anonymous=True)
        rospy.Subscriber("move_base/feedback", MoveBaseActionFeedback, feedback_callback)

        battery_location = find_nearest_station(position, battry_locations)
        publish_battery_location(battery_location)
        
        # Continue listening until the node is shut down
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo("Navigation test finished.")
