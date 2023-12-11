
(cl:in-package :asdf)

(defsystem "gazebo_ros_battery-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Reset" :depends-on ("_package_Reset"))
    (:file "_package_Reset" :depends-on ("_package"))
    (:file "SetCharge" :depends-on ("_package_SetCharge"))
    (:file "_package_SetCharge" :depends-on ("_package"))
    (:file "SetTemperature" :depends-on ("_package_SetTemperature"))
    (:file "_package_SetTemperature" :depends-on ("_package"))
  ))