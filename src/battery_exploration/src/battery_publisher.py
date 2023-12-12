#!/usr/bin/env python3
# license removed for brevity
import rospy
import std_msgs.msg as msg
from move_base_msgs.msg import MoveBaseActionFeedback

battery_voltage = 25

def feedback_callback(feedback):
    global battery_voltage  # Use the global variable
    position = feedback.feedback.base_position.pose.position
    #print(type(position))
    #print("Received pose:\n", position)
    print("Received position\n")
    # Round the coordinates to two decimal places
    x = round(position.x, 2)
    y = round(position.y, 2)
    z = round(position.z, 2)

    # Update battery voltage based on the new position
    battery_voltage -= 0.1  # Adjust this value as needed
    print(f"Updated battery voltage: {battery_voltage}")


def talker():
    global battery_voltage  # Use the global variable
    pub = rospy.Publisher('Battery/voltage', msg.Float32, queue_size=10)
    rospy.init_node('battery_status', anonymous=True)

    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        rospy.Subscriber("move_base/feedback", MoveBaseActionFeedback, feedback_callback)
        pub.publish(battery_voltage)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass