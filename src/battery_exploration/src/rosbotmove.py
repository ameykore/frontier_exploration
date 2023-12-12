#!/usr/bin/env python3

import rospy
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal, MoveBaseActionFeedback

# constant
position = 0

def feedback_callback(feedback):
    global position
    position = feedback.feedback.base_position.pose
    print(type(position))

def movebase_client():

   # Create an action client called "move_base" with action definition file "MoveBaseAction"
    client = actionlib.SimpleActionClient('move_base',MoveBaseAction)
   # Waits until the action server has started up and started listening for goals.
    client.wait_for_server()

   # Creates a new goal with the MoveBaseGoal constructor
    goal = MoveBaseGoal()
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.pose.position.x = position.position.x
    goal.target_pose.pose.position.y = position.position.y
    goal.target_pose.pose.position.z = position.position.z
    goal.target_pose.pose.orientation.w = position.orientation.w
    goal.target_pose.pose.orientation.x = position.orientation.x
    goal.target_pose.pose.orientation.y = position.orientation.y
    goal.target_pose.pose.orientation.z = position.orientation.z

    client.send_goal(goal)
    client.wait_for_result() 

if __name__ == '__main__':
    try:
        rospy.init_node('movebase_client_py')

        rospy.Subscriber("move_base/feedback", MoveBaseActionFeedback, feedback_callback)

        rate = rospy.Rate(10) # 10hz
        while not rospy.is_shutdown():
            result = movebase_client()
            rate.sleep() 
            print("execution hault")
        if result:
            rospy.loginfo("Goal execution done!")
    except rospy.ROSInterruptException:
        rospy.loginfo("Navigation test finished.")