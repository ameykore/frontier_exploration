; Auto-generated. Do not edit!


(cl:in-package gazebo_ros_battery-srv)


;//! \htmlinclude SetCharge-request.msg.html

(cl:defclass <SetCharge-request> (roslisp-msg-protocol:ros-message)
  ((charge
    :reader charge
    :initarg :charge
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass SetCharge-request (<SetCharge-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCharge-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCharge-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_ros_battery-srv:<SetCharge-request> is deprecated: use gazebo_ros_battery-srv:SetCharge-request instead.")))

(cl:ensure-generic-function 'charge-val :lambda-list '(m))
(cl:defmethod charge-val ((m <SetCharge-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_ros_battery-srv:charge-val is deprecated.  Use gazebo_ros_battery-srv:charge instead.")
  (charge m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCharge-request>) ostream)
  "Serializes a message object of type '<SetCharge-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'charge) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCharge-request>) istream)
  "Deserializes a message object of type '<SetCharge-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'charge) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCharge-request>)))
  "Returns string type for a service object of type '<SetCharge-request>"
  "gazebo_ros_battery/SetChargeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCharge-request)))
  "Returns string type for a service object of type 'SetCharge-request"
  "gazebo_ros_battery/SetChargeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCharge-request>)))
  "Returns md5sum for a message object of type '<SetCharge-request>"
  "d7cc9c3639e823f359c406523bae8d4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCharge-request)))
  "Returns md5sum for a message object of type 'SetCharge-request"
  "d7cc9c3639e823f359c406523bae8d4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCharge-request>)))
  "Returns full string definition for message of type '<SetCharge-request>"
  (cl:format cl:nil "std_msgs/Float32 charge~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCharge-request)))
  "Returns full string definition for message of type 'SetCharge-request"
  (cl:format cl:nil "std_msgs/Float32 charge~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCharge-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'charge))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCharge-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCharge-request
    (cl:cons ':charge (charge msg))
))
;//! \htmlinclude SetCharge-response.msg.html

(cl:defclass <SetCharge-response> (roslisp-msg-protocol:ros-message)
  ((set
    :reader set
    :initarg :set
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass SetCharge-response (<SetCharge-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCharge-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCharge-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_ros_battery-srv:<SetCharge-response> is deprecated: use gazebo_ros_battery-srv:SetCharge-response instead.")))

(cl:ensure-generic-function 'set-val :lambda-list '(m))
(cl:defmethod set-val ((m <SetCharge-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_ros_battery-srv:set-val is deprecated.  Use gazebo_ros_battery-srv:set instead.")
  (set m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCharge-response>) ostream)
  "Serializes a message object of type '<SetCharge-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'set) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCharge-response>) istream)
  "Deserializes a message object of type '<SetCharge-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'set) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCharge-response>)))
  "Returns string type for a service object of type '<SetCharge-response>"
  "gazebo_ros_battery/SetChargeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCharge-response)))
  "Returns string type for a service object of type 'SetCharge-response"
  "gazebo_ros_battery/SetChargeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCharge-response>)))
  "Returns md5sum for a message object of type '<SetCharge-response>"
  "d7cc9c3639e823f359c406523bae8d4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCharge-response)))
  "Returns md5sum for a message object of type 'SetCharge-response"
  "d7cc9c3639e823f359c406523bae8d4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCharge-response>)))
  "Returns full string definition for message of type '<SetCharge-response>"
  (cl:format cl:nil "std_msgs/Bool set~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCharge-response)))
  "Returns full string definition for message of type 'SetCharge-response"
  (cl:format cl:nil "std_msgs/Bool set~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCharge-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'set))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCharge-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCharge-response
    (cl:cons ':set (set msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCharge)))
  'SetCharge-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCharge)))
  'SetCharge-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCharge)))
  "Returns string type for a service object of type '<SetCharge>"
  "gazebo_ros_battery/SetCharge")