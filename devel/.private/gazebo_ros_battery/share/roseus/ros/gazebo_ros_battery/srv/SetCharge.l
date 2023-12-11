;; Auto-generated. Do not edit!


(when (boundp 'gazebo_ros_battery::SetCharge)
  (if (not (find-package "GAZEBO_ROS_BATTERY"))
    (make-package "GAZEBO_ROS_BATTERY"))
  (shadow 'SetCharge (find-package "GAZEBO_ROS_BATTERY")))
(unless (find-package "GAZEBO_ROS_BATTERY::SETCHARGE")
  (make-package "GAZEBO_ROS_BATTERY::SETCHARGE"))
(unless (find-package "GAZEBO_ROS_BATTERY::SETCHARGEREQUEST")
  (make-package "GAZEBO_ROS_BATTERY::SETCHARGEREQUEST"))
(unless (find-package "GAZEBO_ROS_BATTERY::SETCHARGERESPONSE")
  (make-package "GAZEBO_ROS_BATTERY::SETCHARGERESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gazebo_ros_battery::SetChargeRequest
  :super ros::object
  :slots (_charge ))

(defmethod gazebo_ros_battery::SetChargeRequest
  (:init
   (&key
    ((:charge __charge) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _charge __charge)
   self)
  (:charge
   (&rest __charge)
   (if (keywordp (car __charge))
       (send* _charge __charge)
     (progn
       (if __charge (setq _charge (car __charge)))
       _charge)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _charge
    (send _charge :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _charge
       (send _charge :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _charge
     (send _charge :deserialize buf ptr-) (incf ptr- (send _charge :serialization-length))
   ;;
   self)
  )

(defclass gazebo_ros_battery::SetChargeResponse
  :super ros::object
  :slots (_set ))

(defmethod gazebo_ros_battery::SetChargeResponse
  (:init
   (&key
    ((:set __set) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _set __set)
   self)
  (:set
   (&rest __set)
   (if (keywordp (car __set))
       (send* _set __set)
     (progn
       (if __set (setq _set (car __set)))
       _set)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _set
    (send _set :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _set
       (send _set :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _set
     (send _set :deserialize buf ptr-) (incf ptr- (send _set :serialization-length))
   ;;
   self)
  )

(defclass gazebo_ros_battery::SetCharge
  :super ros::object
  :slots ())

(setf (get gazebo_ros_battery::SetCharge :md5sum-) "d7cc9c3639e823f359c406523bae8d4a")
(setf (get gazebo_ros_battery::SetCharge :datatype-) "gazebo_ros_battery/SetCharge")
(setf (get gazebo_ros_battery::SetCharge :request) gazebo_ros_battery::SetChargeRequest)
(setf (get gazebo_ros_battery::SetCharge :response) gazebo_ros_battery::SetChargeResponse)

(defmethod gazebo_ros_battery::SetChargeRequest
  (:response () (instance gazebo_ros_battery::SetChargeResponse :init)))

(setf (get gazebo_ros_battery::SetChargeRequest :md5sum-) "d7cc9c3639e823f359c406523bae8d4a")
(setf (get gazebo_ros_battery::SetChargeRequest :datatype-) "gazebo_ros_battery/SetChargeRequest")
(setf (get gazebo_ros_battery::SetChargeRequest :definition-)
      "std_msgs/Float32 charge

================================================================================
MSG: std_msgs/Float32
---
std_msgs/Bool set


================================================================================
MSG: std_msgs/Bool
")

(setf (get gazebo_ros_battery::SetChargeResponse :md5sum-) "d7cc9c3639e823f359c406523bae8d4a")
(setf (get gazebo_ros_battery::SetChargeResponse :datatype-) "gazebo_ros_battery/SetChargeResponse")
(setf (get gazebo_ros_battery::SetChargeResponse :definition-)
      "std_msgs/Float32 charge

================================================================================
MSG: std_msgs/Float32
---
std_msgs/Bool set


================================================================================
MSG: std_msgs/Bool
")



(provide :gazebo_ros_battery/SetCharge "d7cc9c3639e823f359c406523bae8d4a")


