#!/usr/bin/env python3

import rospy
import actionlib
import std_msgs.msg as msg
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from battery_exploration.msg import battery_station

# Constants
position = 0
voltage = 0

def battery_feedback(battery):
    print(f"Received battery voltage: {battery.data}")
    voltage = battery.data
    rate = rospy.Rate(10)  # 10hz
    while voltage <= 4.0:
        print("Low battery")
        movebase_client()
        rate.sleep()

def station_goal(feedback):
    global position
    position = feedback

def movebase_client():
    global position
    global voltage

    client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
    client.wait_for_server()

    goal = MoveBaseGoal()
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.pose.position.x = position.x
    goal.target_pose.pose.position.y = position.y
    goal.target_pose.pose.position.z = position.z
    goal.target_pose.pose.orientation.x = position.orientation_x
    goal.target_pose.pose.orientation.y = position.orientation_y
    goal.target_pose.pose.orientation.z = position.orientation_z
    goal.target_pose.pose.orientation.w = position.orientation_z

    client.send_goal(goal)
    client.wait_for_result()

    # if round(position.distance, 2) < 0.3:
    #     print("charging...")
    #     rospy.sleep(10)
    #     voltage = 25


def receiver():
    global voltage

    rospy.init_node('battery_receiver', anonymous=True)
    rospy.Subscriber("Battery/voltage", msg.Float32, battery_feedback)
    rospy.Subscriber("battery_location", battery_station, station_goal)

    # Continue listening until the node is shut down
    rospy.spin()

if __name__ == '__main__':
    try:
        receiver()
    except rospy.ROSInterruptException:
        rospy.loginfo("Navigation test finished.")
