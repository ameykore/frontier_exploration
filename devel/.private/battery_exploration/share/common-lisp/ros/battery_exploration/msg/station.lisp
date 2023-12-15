; Auto-generated. Do not edit!


(cl:in-package battery_exploration-msg)


;//! \htmlinclude station.msg.html

(cl:defclass <station> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0))
)

(cl:defclass station (<station>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <station>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'station)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name battery_exploration-msg:<station> is deprecated: use battery_exploration-msg:station instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <station>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader battery_exploration-msg:x-val is deprecated.  Use battery_exploration-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <station>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader battery_exploration-msg:y-val is deprecated.  Use battery_exploration-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <station>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader battery_exploration-msg:distance-val is deprecated.  Use battery_exploration-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <station>) ostream)
  "Serializes a message object of type '<station>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <station>) istream)
  "Deserializes a message object of type '<station>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<station>)))
  "Returns string type for a message object of type '<station>"
  "battery_exploration/station")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'station)))
  "Returns string type for a message object of type 'station"
  "battery_exploration/station")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<station>)))
  "Returns md5sum for a message object of type '<station>"
  "93f64830a0bd3ec5a701e4284e4574a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'station)))
  "Returns md5sum for a message object of type 'station"
  "93f64830a0bd3ec5a701e4284e4574a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<station>)))
  "Returns full string definition for message of type '<station>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 distance~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'station)))
  "Returns full string definition for message of type 'station"
  (cl:format cl:nil "float32 x~%float32 y~%float32 distance~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <station>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <station>))
  "Converts a ROS message object to a list"
  (cl:list 'station
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':distance (distance msg))
))
