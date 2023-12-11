; Auto-generated. Do not edit!


(cl:in-package gazebo_ros_battery-srv)


;//! \htmlinclude SetTemperature-request.msg.html

(cl:defclass <SetTemperature-request> (roslisp-msg-protocol:ros-message)
  ((temperature
    :reader temperature
    :initarg :temperature
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass SetTemperature-request (<SetTemperature-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTemperature-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTemperature-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_ros_battery-srv:<SetTemperature-request> is deprecated: use gazebo_ros_battery-srv:SetTemperature-request instead.")))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <SetTemperature-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_ros_battery-srv:temperature-val is deprecated.  Use gazebo_ros_battery-srv:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTemperature-request>) ostream)
  "Serializes a message object of type '<SetTemperature-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'temperature) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTemperature-request>) istream)
  "Deserializes a message object of type '<SetTemperature-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'temperature) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTemperature-request>)))
  "Returns string type for a service object of type '<SetTemperature-request>"
  "gazebo_ros_battery/SetTemperatureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTemperature-request)))
  "Returns string type for a service object of type 'SetTemperature-request"
  "gazebo_ros_battery/SetTemperatureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTemperature-request>)))
  "Returns md5sum for a message object of type '<SetTemperature-request>"
  "cff89ed8489cfa6e56ffd34457ea253c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTemperature-request)))
  "Returns md5sum for a message object of type 'SetTemperature-request"
  "cff89ed8489cfa6e56ffd34457ea253c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTemperature-request>)))
  "Returns full string definition for message of type '<SetTemperature-request>"
  (cl:format cl:nil "std_msgs/Float32 temperature~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTemperature-request)))
  "Returns full string definition for message of type 'SetTemperature-request"
  (cl:format cl:nil "std_msgs/Float32 temperature~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTemperature-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'temperature))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTemperature-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTemperature-request
    (cl:cons ':temperature (temperature msg))
))
;//! \htmlinclude SetTemperature-response.msg.html

(cl:defclass <SetTemperature-response> (roslisp-msg-protocol:ros-message)
  ((temperature
    :reader temperature
    :initarg :temperature
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass SetTemperature-response (<SetTemperature-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTemperature-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTemperature-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_ros_battery-srv:<SetTemperature-response> is deprecated: use gazebo_ros_battery-srv:SetTemperature-response instead.")))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <SetTemperature-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_ros_battery-srv:temperature-val is deprecated.  Use gazebo_ros_battery-srv:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTemperature-response>) ostream)
  "Serializes a message object of type '<SetTemperature-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'temperature) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTemperature-response>) istream)
  "Deserializes a message object of type '<SetTemperature-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'temperature) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTemperature-response>)))
  "Returns string type for a service object of type '<SetTemperature-response>"
  "gazebo_ros_battery/SetTemperatureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTemperature-response)))
  "Returns string type for a service object of type 'SetTemperature-response"
  "gazebo_ros_battery/SetTemperatureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTemperature-response>)))
  "Returns md5sum for a message object of type '<SetTemperature-response>"
  "cff89ed8489cfa6e56ffd34457ea253c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTemperature-response)))
  "Returns md5sum for a message object of type 'SetTemperature-response"
  "cff89ed8489cfa6e56ffd34457ea253c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTemperature-response>)))
  "Returns full string definition for message of type '<SetTemperature-response>"
  (cl:format cl:nil "std_msgs/Float32 temperature~%~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTemperature-response)))
  "Returns full string definition for message of type 'SetTemperature-response"
  (cl:format cl:nil "std_msgs/Float32 temperature~%~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTemperature-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'temperature))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTemperature-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTemperature-response
    (cl:cons ':temperature (temperature msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTemperature)))
  'SetTemperature-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTemperature)))
  'SetTemperature-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTemperature)))
  "Returns string type for a service object of type '<SetTemperature>"
  "gazebo_ros_battery/SetTemperature")