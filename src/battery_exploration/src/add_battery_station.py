#!/usr/bin/env python3

import rospy
from gazebo_msgs.msg import ModelState
from gazebo_msgs.srv import SpawnModel, SpawnModelRequest
from geometry_msgs.msg import Pose
from std_msgs.msg import Float32MultiArray

def generate_cyclinder():
    # Define the cylinder model
    cylinder_xml = """
    <sdf version="1.6">
        <model name="cylinder">
            <link name="link">
                <pose>0 0 0 0 0 0</pose>
                <collision name="collision">
                    <geometry>
                        <cylinder>
                            <radius>0.001</radius>
                            <length>0.001</length>
                        </cylinder>
                    </geometry>
                </collision>
                <visual name="visual">
                    <geometry>
                        <cylinder>
                            <radius>0.5</radius>
                            <length>0.005</length>
                        </cylinder>
                    </geometry>
                    <material>
                        <script>
                            <uri>file://media/materials/scripts/gazebo.material</uri>
                            <name>Gazebo/Yellow</name>
                        </script>
                    </material>
                </visual>
            </link>
        </model>
    </sdf>
    """
    return cylinder_xml



def spawn_battery():
    rospy.init_node('spawn_cylinder_node', anonymous=True)


    locations = [[0,0],[-2,-3],[2,-4],[2,-1],[-2,2],[1,3]]
    pose_publisher = rospy.Publisher('/battery_station/pose', Pose, queue_size=20)



    for i,loc in enumerate(locations):
        initial_pose = Pose()
        initial_pose.position.x = loc[0]
        initial_pose.position.y = loc[1]

        cylinder_xml = generate_cyclinder()

        spawn_model_request = SpawnModelRequest()
        spawn_model_request.model_name = "cylinder" + str(i)
        spawn_model_request.model_xml = cylinder_xml
        spawn_model_request.robot_namespace = "cylinder" + str(i)
        spawn_model_request.initial_pose = initial_pose



        try:
            rospy.wait_for_service('/gazebo/spawn_sdf_model', timeout=10.0)
            spawn_model_proxy = rospy.ServiceProxy('/gazebo/spawn_sdf_model', SpawnModel)
            spawn_model_proxy(spawn_model_request)
            rospy.loginfo("Battery Station at (" + str(loc[0]) + "," + str(loc[1])+ ") spawned successfully.")
        except rospy.ServiceException as e:
            rospy.logerr("Spawn service call failed: %s", e)

        rospy.sleep(1.0)  # Give Gazebo some time to update the model
        pose_publisher.publish(initial_pose)

    # Spin to keep the node alive
    rospy.spin()


if __name__ == '__main__':
    try:
        spawn_battery()
    except rospy.ROSInterruptException:
        pass
