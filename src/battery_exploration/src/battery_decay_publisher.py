#!/usr/bin/env python3
# license removed for brevity
import rospy
import std_msgs.msg as msg
import time
from move_base_msgs.msg import MoveBaseActionFeedback

# Parameters
battery_voltage = 24.2  # Fully charged voltage [V]
alpha = -1.0  # Linear discharge coefficient
Q = 13500  # Design capacity of the battery [Ah]
R = 0.1  # Internal resistance of the battery [Ohm]
simulation_duration = 25  # Simulation duration in seconds

def simulate_degrading_battery(V0, alpha, Q, R, simulation_duration):
    current_capacity = 0  # Accumulated discharge [Ah]
    V = V0  # Initial voltage

    print(f"Time\t\tVoltage")
    print("--------------------")

    start_time = rospy.Time.now()

<<<<<<< HEAD
    while time.time() - start_time < simulation_duration:
        print(f"{time.time() - start_time:.2f}s\t\t{V:.2f}V")
        
        i = 0.1  # Example current drawn [A]
        
        # Update the accumulated discharge
        current_capacity += i * (time.time() - start_time)

        # Update the battery voltage using the provided model
        V = V0 + alpha * ((1 - current_capacity )/ Q) - R * i
=======
    while rospy.Time.now() - start_time < rospy.Duration.from_sec(simulation_duration):
        print(f"{(rospy.Time.now() - start_time).to_sec():.2f}s\t\t{V:.2f}V")

        # Simulate current drawn (replace with your own current profile)
        i = 0.1  # Example current drawn [A]

        # Update accumulated discharge
        current_capacity += i * (rospy.Time.now() - start_time).to_sec()

        # Update battery voltage using the provided model
        V = V0 + alpha * (1 - current_capacity / Q) - R * i
>>>>>>> 7dfbd54eebc4ba928fe23e979986aa31c22c4a47


        
        return V


def feedback_callback(feedback):
    global battery_voltage  # Use the global variable
    position = feedback.feedback.base_position.pose.position

    # Round the coordinates to two decimal places
    x = round(position.x, 2)
    y = round(position.y, 2)
    z = round(position.z, 2)

    # Update battery voltage based on the new position 
    if battery_voltage > 0:
        # print("Battery is not at zero")
        battery_voltage = simulate_degrading_battery(battery_voltage, alpha, Q, R, simulation_duration)  # Adjust this value as needed
        # battery_voltage -= 0.001
    else:
        print("Battery is at zero")
        battery_voltage = 0

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