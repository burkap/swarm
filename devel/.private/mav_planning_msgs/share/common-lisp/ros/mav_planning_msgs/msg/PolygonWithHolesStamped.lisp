; Auto-generated. Do not edit!


(cl:in-package mav_planning_msgs-msg)


;//! \htmlinclude PolygonWithHolesStamped.msg.html

(cl:defclass <PolygonWithHolesStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (polygon
    :reader polygon
    :initarg :polygon
    :type mav_planning_msgs-msg:PolygonWithHoles
    :initform (cl:make-instance 'mav_planning_msgs-msg:PolygonWithHoles)))
)

(cl:defclass PolygonWithHolesStamped (<PolygonWithHolesStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PolygonWithHolesStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PolygonWithHolesStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_planning_msgs-msg:<PolygonWithHolesStamped> is deprecated: use mav_planning_msgs-msg:PolygonWithHolesStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PolygonWithHolesStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-msg:header-val is deprecated.  Use mav_planning_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <PolygonWithHolesStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-msg:altitude-val is deprecated.  Use mav_planning_msgs-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <PolygonWithHolesStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-msg:polygon-val is deprecated.  Use mav_planning_msgs-msg:polygon instead.")
  (polygon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PolygonWithHolesStamped>) ostream)
  "Serializes a message object of type '<PolygonWithHolesStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygon) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PolygonWithHolesStamped>) istream)
  "Deserializes a message object of type '<PolygonWithHolesStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygon) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PolygonWithHolesStamped>)))
  "Returns string type for a message object of type '<PolygonWithHolesStamped>"
  "mav_planning_msgs/PolygonWithHolesStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PolygonWithHolesStamped)))
  "Returns string type for a message object of type 'PolygonWithHolesStamped"
  "mav_planning_msgs/PolygonWithHolesStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PolygonWithHolesStamped>)))
  "Returns md5sum for a message object of type '<PolygonWithHolesStamped>"
  "75e2ac63509c016edab7c5a5ed67059b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PolygonWithHolesStamped)))
  "Returns md5sum for a message object of type 'PolygonWithHolesStamped"
  "75e2ac63509c016edab7c5a5ed67059b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PolygonWithHolesStamped>)))
  "Returns full string definition for message of type '<PolygonWithHolesStamped>"
  (cl:format cl:nil "# A message to define a 2D polygon with holes, stamp, and altitude above ground.~%Header header~%float64 altitude~%mav_planning_msgs/PolygonWithHoles polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mav_planning_msgs/PolygonWithHoles~%# A message to define a 2D polygon with holes.~%mav_planning_msgs/Polygon2D hull~%mav_planning_msgs/Polygon2D[] holes~%~%================================================================================~%MSG: mav_planning_msgs/Polygon2D~%# A specification of a 2D polygon where the first and last points are assumed to be connected.~%mav_planning_msgs/Point2D[] points~%~%================================================================================~%MSG: mav_planning_msgs/Point2D~%# This contains the position of a 2D point.~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PolygonWithHolesStamped)))
  "Returns full string definition for message of type 'PolygonWithHolesStamped"
  (cl:format cl:nil "# A message to define a 2D polygon with holes, stamp, and altitude above ground.~%Header header~%float64 altitude~%mav_planning_msgs/PolygonWithHoles polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mav_planning_msgs/PolygonWithHoles~%# A message to define a 2D polygon with holes.~%mav_planning_msgs/Polygon2D hull~%mav_planning_msgs/Polygon2D[] holes~%~%================================================================================~%MSG: mav_planning_msgs/Polygon2D~%# A specification of a 2D polygon where the first and last points are assumed to be connected.~%mav_planning_msgs/Point2D[] points~%~%================================================================================~%MSG: mav_planning_msgs/Point2D~%# This contains the position of a 2D point.~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PolygonWithHolesStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygon))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PolygonWithHolesStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'PolygonWithHolesStamped
    (cl:cons ':header (header msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':polygon (polygon msg))
))
