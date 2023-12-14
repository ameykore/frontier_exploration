#!/usr/bin/env python3
# license removed for brevity
import rospy
import std_msgs.msg as msg
import time
from move_base_msgs.msg import MoveBaseActionFeedback
from battery_exploration.msg import battery_station

# Parameters
battery_voltage = 24.2  # Fully charged voltage [V]
alpha = -0.01 # Linear discharge coefficient
Q = 13.5  # Design capacity of the battery [Ah]
R = 0.001  # Internal resistance of the battery [Ohm]
simulation_duration = 25  # Simulation duration in seconds

def simulate_degrading_battery(V0, alpha, Q, R, simulation_duration):
    current_capacity = 0  # Accumulated discharge [Ah]
    V = V0  # Initial voltage

    print(f"Time\t\tVoltage")
    print("--------------------")

    start_time = rospy.Time.now()


    while rospy.Time.now() - start_time < rospy.Duration.from_sec(simulation_duration):
        time_now = rospy.Time.now()
        print(f"{(time_now - start_time).to_sec():.2f}s\t\t{V:.2f}V")

        # Simulate current drawn (replace with your own current profile)
        i = 0.001  # Example current drawn [A]

        # Update accumulated discharge
        current_capacity = i * ((time_now - start_time).to_sec())/3600
        # Update battery voltage using the provided model
        V = V0 + alpha * ((1 - current_capacity) / Q)-R*i
        start_time = time_now
        
        return V


def feedback_callback(station):
    global battery_voltage  # Use the global variable

    # Update battery voltage based on the new position 
    if battery_voltage > 4:
        # print("Battery is not at zero")
        #battery_voltage = simulate_degrading_battery(battery_voltage, alpha, Q, R, simulation_duration)  # Adjust this value as needed
        battery_voltage -= 0.001
    else:
        print("Battery below threshold")
        print(f"staion distance: {station.distance}")
        if round(station.distance, 2) < 0.5:
            print("charging...")
            rospy.sleep(10)
            battery_voltage = 25

    print(f"Updated battery voltage: {battery_voltage}")


def talker():
    global battery_voltage  # Use the global variable
    pub = rospy.Publisher('Battery/voltage', msg.Float32, queue_size=10)
    rospy.init_node('battery_status', anonymous=True)


    rate = rospy.Rate(5) # 10hz
    while not rospy.is_shutdown():
        rospy.Subscriber("battery_location", battery_station, feedback_callback)
        pub.publish(battery_voltage)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass