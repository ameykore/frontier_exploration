#!/usr/bin/env python3

import rospy
import actionlib
import std_msgs.msg as msg
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal, MoveBaseActionFeedback

# Constants
position = 0
voltage = 10

def battery_feedback(battery):
    global voltage
    print(f"Received battery voltage: {battery.data}")
    voltage = battery.data
    rate = rospy.Rate(10)  # 10hz
    while voltage <= 1.0:
        print("Low battery")
        movebase_client()
        rate.sleep()

def feedback_callback(feedback):
    global position
    position = feedback.feedback.base_position.pose

def movebase_client():
    global position

    client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
    client.wait_for_server()

    goal = MoveBaseGoal()
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.pose = position

    client.send_goal(goal)
    client.wait_for_result()

def receiver():
    global voltage

    rospy.init_node('battery_receiver', anonymous=True)
    rospy.Subscriber("Battery/voltage", msg.Float32, battery_feedback)
    rospy.Subscriber("move_base/feedback", MoveBaseActionFeedback, feedback_callback)

    # Continue listening until the node is shut down
    rospy.spin()

if __name__ == '__main__':
    try:
        receiver()
    except rospy.ROSInterruptException:
        rospy.loginfo("Navigation test finished.")
