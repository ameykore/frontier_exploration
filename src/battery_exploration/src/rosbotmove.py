#!/usr/bin/env python3

import rospy
import actionlib
import std_msgs.msg as msg
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal, MoveBaseActionFeedback

# Constants
position = 0
voltage = 0

def battery_feedback(battery):
    global voltage
    print(f"Received battery voltage: {battery.data}")
    voltage = battery.data
    rate = rospy.Rate(10)  # 10hz
    while voltage <= 4.0:
        print("Low battery")
        movebase_client()
        rate.sleep()

def station_goal(feedback):
    global position
    position = feedback.data

def movebase_client():
    global position
    global voltage

    client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
    client.wait_for_server()

    goal = MoveBaseGoal()
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.pose.position.x = position[0]
    goal.target_pose.pose.position.y = position[1]
    goal.target_pose.pose.orientation.w = 1

    client.send_goal(goal)
    client.wait_for_result()

    # Check the result status
    result = client.get_result()
    if result:
        rospy.loginfo("Robot reached the goal!")
        rospy.loginfo("Charging...")


def receiver():
    global voltage

    rospy.init_node('battery_receiver', anonymous=True)
    rospy.Subscriber("Battery/voltage", msg.Float32, battery_feedback)
    rospy.Subscriber("battery_location", msg.Float32MultiArray, station_goal)

    # Continue listening until the node is shut down
    rospy.spin()

if __name__ == '__main__':
    try:
        receiver()
    except rospy.ROSInterruptException:
        rospy.loginfo("Navigation test finished.")
