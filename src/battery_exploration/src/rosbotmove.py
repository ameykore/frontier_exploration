#!/usr/bin/env python3

import rospy
import actionlib
import std_msgs.msg as msg
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from battery_exploration.msg import battery_station



def movebase_client(x, y):

    client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
    client.wait_for_server()

    goal = MoveBaseGoal()
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.pose.position.x = x
    goal.target_pose.pose.position.y = y
    # goal.target_pose.pose.position.z = position.z
    # goal.target_pose.pose.orientation.x = position.orientation_x
    # goal.target_pose.pose.orientation.y = position.orientation_y
    goal.target_pose.pose.orientation.z = 1
    # goal.target_pose.pose.orientation.w = position.orientation_w

    client.send_goal(goal)
    client.wait_for_result()


def battery_feedback(battery):
    voltage = battery.battery
    print(f"Received battery voltage: {voltage}")
    if voltage < 4.3:
        # voltage = 40
        print("Low battery")
        movebase_client(battery.x, battery.y)



if __name__ == '__main__':
    try:
        rospy.init_node('Battery_receiver', anonymous=True)
        rospy.Subscriber("Battery/voltage", battery_station, battery_feedback)

        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo("Navigation test finished.")
