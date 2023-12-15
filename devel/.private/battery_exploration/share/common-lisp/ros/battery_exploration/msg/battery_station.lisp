; Auto-generated. Do not edit!


(cl:in-package battery_exploration-msg)


;//! \htmlinclude battery_station.msg.html

(cl:defclass <battery_station> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (battery
    :reader battery
    :initarg :battery
    :type cl:float
    :initform 0.0))
)

(cl:defclass battery_station (<battery_station>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <battery_station>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'battery_station)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name battery_exploration-msg:<battery_station> is deprecated: use battery_exploration-msg:battery_station instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <battery_station>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader battery_exploration-msg:x-val is deprecated.  Use battery_exploration-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <battery_station>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader battery_exploration-msg:y-val is deprecated.  Use battery_exploration-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <battery_station>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader battery_exploration-msg:distance-val is deprecated.  Use battery_exploration-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <battery_station>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader battery_exploration-msg:battery-val is deprecated.  Use battery_exploration-msg:battery instead.")
  (battery m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <battery_station>) ostream)
  "Serializes a message object of type '<battery_station>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <battery_station>) istream)
  "Deserializes a message object of type '<battery_station>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<battery_station>)))
  "Returns string type for a message object of type '<battery_station>"
  "battery_exploration/battery_station")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'battery_station)))
  "Returns string type for a message object of type 'battery_station"
  "battery_exploration/battery_station")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<battery_station>)))
  "Returns md5sum for a message object of type '<battery_station>"
  "eb1e3cafe78d7101d500adbbdedc5d81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'battery_station)))
  "Returns md5sum for a message object of type 'battery_station"
  "eb1e3cafe78d7101d500adbbdedc5d81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<battery_station>)))
  "Returns full string definition for message of type '<battery_station>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 distance~%float32 battery~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'battery_station)))
  "Returns full string definition for message of type 'battery_station"
  (cl:format cl:nil "float32 x~%float32 y~%float32 distance~%float32 battery~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <battery_station>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <battery_station>))
  "Converts a ROS message object to a list"
  (cl:list 'battery_station
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':battery (battery msg))
))
