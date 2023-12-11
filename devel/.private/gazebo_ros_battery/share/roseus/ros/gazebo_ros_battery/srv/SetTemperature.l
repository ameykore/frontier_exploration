;; Auto-generated. Do not edit!


(when (boundp 'gazebo_ros_battery::SetTemperature)
  (if (not (find-package "GAZEBO_ROS_BATTERY"))
    (make-package "GAZEBO_ROS_BATTERY"))
  (shadow 'SetTemperature (find-package "GAZEBO_ROS_BATTERY")))
(unless (find-package "GAZEBO_ROS_BATTERY::SETTEMPERATURE")
  (make-package "GAZEBO_ROS_BATTERY::SETTEMPERATURE"))
(unless (find-package "GAZEBO_ROS_BATTERY::SETTEMPERATUREREQUEST")
  (make-package "GAZEBO_ROS_BATTERY::SETTEMPERATUREREQUEST"))
(unless (find-package "GAZEBO_ROS_BATTERY::SETTEMPERATURERESPONSE")
  (make-package "GAZEBO_ROS_BATTERY::SETTEMPERATURERESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gazebo_ros_battery::SetTemperatureRequest
  :super ros::object
  :slots (_temperature ))

(defmethod gazebo_ros_battery::SetTemperatureRequest
  (:init
   (&key
    ((:temperature __temperature) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _temperature __temperature)
   self)
  (:temperature
   (&rest __temperature)
   (if (keywordp (car __temperature))
       (send* _temperature __temperature)
     (progn
       (if __temperature (setq _temperature (car __temperature)))
       _temperature)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _temperature
    (send _temperature :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _temperature
       (send _temperature :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _temperature
     (send _temperature :deserialize buf ptr-) (incf ptr- (send _temperature :serialization-length))
   ;;
   self)
  )

(defclass gazebo_ros_battery::SetTemperatureResponse
  :super ros::object
  :slots (_temperature ))

(defmethod gazebo_ros_battery::SetTemperatureResponse
  (:init
   (&key
    ((:temperature __temperature) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _temperature __temperature)
   self)
  (:temperature
   (&rest __temperature)
   (if (keywordp (car __temperature))
       (send* _temperature __temperature)
     (progn
       (if __temperature (setq _temperature (car __temperature)))
       _temperature)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _temperature
    (send _temperature :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _temperature
       (send _temperature :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _temperature
     (send _temperature :deserialize buf ptr-) (incf ptr- (send _temperature :serialization-length))
   ;;
   self)
  )

(defclass gazebo_ros_battery::SetTemperature
  :super ros::object
  :slots ())

(setf (get gazebo_ros_battery::SetTemperature :md5sum-) "cff89ed8489cfa6e56ffd34457ea253c")
(setf (get gazebo_ros_battery::SetTemperature :datatype-) "gazebo_ros_battery/SetTemperature")
(setf (get gazebo_ros_battery::SetTemperature :request) gazebo_ros_battery::SetTemperatureRequest)
(setf (get gazebo_ros_battery::SetTemperature :response) gazebo_ros_battery::SetTemperatureResponse)

(defmethod gazebo_ros_battery::SetTemperatureRequest
  (:response () (instance gazebo_ros_battery::SetTemperatureResponse :init)))

(setf (get gazebo_ros_battery::SetTemperatureRequest :md5sum-) "cff89ed8489cfa6e56ffd34457ea253c")
(setf (get gazebo_ros_battery::SetTemperatureRequest :datatype-) "gazebo_ros_battery/SetTemperatureRequest")
(setf (get gazebo_ros_battery::SetTemperatureRequest :definition-)
      "std_msgs/Float32 temperature

================================================================================
MSG: std_msgs/Float32
---
std_msgs/Float32 temperature


================================================================================
MSG: std_msgs/Float32
")

(setf (get gazebo_ros_battery::SetTemperatureResponse :md5sum-) "cff89ed8489cfa6e56ffd34457ea253c")
(setf (get gazebo_ros_battery::SetTemperatureResponse :datatype-) "gazebo_ros_battery/SetTemperatureResponse")
(setf (get gazebo_ros_battery::SetTemperatureResponse :definition-)
      "std_msgs/Float32 temperature

================================================================================
MSG: std_msgs/Float32
---
std_msgs/Float32 temperature


================================================================================
MSG: std_msgs/Float32
")



(provide :gazebo_ros_battery/SetTemperature "cff89ed8489cfa6e56ffd34457ea253c")


