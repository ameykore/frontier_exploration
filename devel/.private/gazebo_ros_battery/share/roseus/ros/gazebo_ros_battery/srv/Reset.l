;; Auto-generated. Do not edit!


(when (boundp 'gazebo_ros_battery::Reset)
  (if (not (find-package "GAZEBO_ROS_BATTERY"))
    (make-package "GAZEBO_ROS_BATTERY"))
  (shadow 'Reset (find-package "GAZEBO_ROS_BATTERY")))
(unless (find-package "GAZEBO_ROS_BATTERY::RESET")
  (make-package "GAZEBO_ROS_BATTERY::RESET"))
(unless (find-package "GAZEBO_ROS_BATTERY::RESETREQUEST")
  (make-package "GAZEBO_ROS_BATTERY::RESETREQUEST"))
(unless (find-package "GAZEBO_ROS_BATTERY::RESETRESPONSE")
  (make-package "GAZEBO_ROS_BATTERY::RESETRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gazebo_ros_battery::ResetRequest
  :super ros::object
  :slots (_reset ))

(defmethod gazebo_ros_battery::ResetRequest
  (:init
   (&key
    ((:reset __reset) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _reset __reset)
   self)
  (:reset
   (&rest __reset)
   (if (keywordp (car __reset))
       (send* _reset __reset)
     (progn
       (if __reset (setq _reset (car __reset)))
       _reset)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _reset
    (send _reset :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _reset
       (send _reset :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _reset
     (send _reset :deserialize buf ptr-) (incf ptr- (send _reset :serialization-length))
   ;;
   self)
  )

(defclass gazebo_ros_battery::ResetResponse
  :super ros::object
  :slots (_state ))

(defmethod gazebo_ros_battery::ResetResponse
  (:init
   (&key
    ((:state __state) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass gazebo_ros_battery::Reset
  :super ros::object
  :slots ())

(setf (get gazebo_ros_battery::Reset :md5sum-) "4ebe8e339b87d71255ac97ce88254b89")
(setf (get gazebo_ros_battery::Reset :datatype-) "gazebo_ros_battery/Reset")
(setf (get gazebo_ros_battery::Reset :request) gazebo_ros_battery::ResetRequest)
(setf (get gazebo_ros_battery::Reset :response) gazebo_ros_battery::ResetResponse)

(defmethod gazebo_ros_battery::ResetRequest
  (:response () (instance gazebo_ros_battery::ResetResponse :init)))

(setf (get gazebo_ros_battery::ResetRequest :md5sum-) "4ebe8e339b87d71255ac97ce88254b89")
(setf (get gazebo_ros_battery::ResetRequest :datatype-) "gazebo_ros_battery/ResetRequest")
(setf (get gazebo_ros_battery::ResetRequest :definition-)
      "std_msgs/Bool reset

================================================================================
MSG: std_msgs/Bool
---
std_msgs/Bool state


================================================================================
MSG: std_msgs/Bool
")

(setf (get gazebo_ros_battery::ResetResponse :md5sum-) "4ebe8e339b87d71255ac97ce88254b89")
(setf (get gazebo_ros_battery::ResetResponse :datatype-) "gazebo_ros_battery/ResetResponse")
(setf (get gazebo_ros_battery::ResetResponse :definition-)
      "std_msgs/Bool reset

================================================================================
MSG: std_msgs/Bool
---
std_msgs/Bool state


================================================================================
MSG: std_msgs/Bool
")



(provide :gazebo_ros_battery/Reset "4ebe8e339b87d71255ac97ce88254b89")


