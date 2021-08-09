; Auto-generated. Do not edit!


(cl:in-package mav_msgs-msg)


;//! \htmlinclude FilteredSensorData.msg.html

(cl:defclass <FilteredSensorData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (accelerometer
    :reader accelerometer
    :initarg :accelerometer
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (gyroscope
    :reader gyroscope
    :initarg :gyroscope
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (magnetometer
    :reader magnetometer
    :initarg :magnetometer
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (barometer
    :reader barometer
    :initarg :barometer
    :type cl:float
    :initform 0.0))
)

(cl:defclass FilteredSensorData (<FilteredSensorData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FilteredSensorData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FilteredSensorData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_msgs-msg:<FilteredSensorData> is deprecated: use mav_msgs-msg:FilteredSensorData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FilteredSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:header-val is deprecated.  Use mav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'accelerometer-val :lambda-list '(m))
(cl:defmethod accelerometer-val ((m <FilteredSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:accelerometer-val is deprecated.  Use mav_msgs-msg:accelerometer instead.")
  (accelerometer m))

(cl:ensure-generic-function 'gyroscope-val :lambda-list '(m))
(cl:defmethod gyroscope-val ((m <FilteredSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:gyroscope-val is deprecated.  Use mav_msgs-msg:gyroscope instead.")
  (gyroscope m))

(cl:ensure-generic-function 'magnetometer-val :lambda-list '(m))
(cl:defmethod magnetometer-val ((m <FilteredSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:magnetometer-val is deprecated.  Use mav_msgs-msg:magnetometer instead.")
  (magnetometer m))

(cl:ensure-generic-function 'barometer-val :lambda-list '(m))
(cl:defmethod barometer-val ((m <FilteredSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:barometer-val is deprecated.  Use mav_msgs-msg:barometer instead.")
  (barometer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FilteredSensorData>) ostream)
  "Serializes a message object of type '<FilteredSensorData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accelerometer) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyroscope) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'magnetometer) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'barometer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FilteredSensorData>) istream)
  "Deserializes a message object of type '<FilteredSensorData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accelerometer) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyroscope) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'magnetometer) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'barometer) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FilteredSensorData>)))
  "Returns string type for a message object of type '<FilteredSensorData>"
  "mav_msgs/FilteredSensorData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilteredSensorData)))
  "Returns string type for a message object of type 'FilteredSensorData"
  "mav_msgs/FilteredSensorData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FilteredSensorData>)))
  "Returns md5sum for a message object of type '<FilteredSensorData>"
  "a9b51fae1f4ed3a8a0522b4ffe61659f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FilteredSensorData)))
  "Returns md5sum for a message object of type 'FilteredSensorData"
  "a9b51fae1f4ed3a8a0522b4ffe61659f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FilteredSensorData>)))
  "Returns full string definition for message of type '<FilteredSensorData>"
  (cl:format cl:nil "Header header~%~%geometry_msgs/Vector3 accelerometer	# acceleration in vehicle frame [m/s^2]~%geometry_msgs/Vector3 gyroscope     # rotational velocity in vehicle frame [rad/s]~%geometry_msgs/Vector3 magnetometer  # Magnetometer measurements in vehicle frame [uT]~%float64 barometer                   # Height from barometer relative to start-up point [m]~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FilteredSensorData)))
  "Returns full string definition for message of type 'FilteredSensorData"
  (cl:format cl:nil "Header header~%~%geometry_msgs/Vector3 accelerometer	# acceleration in vehicle frame [m/s^2]~%geometry_msgs/Vector3 gyroscope     # rotational velocity in vehicle frame [rad/s]~%geometry_msgs/Vector3 magnetometer  # Magnetometer measurements in vehicle frame [uT]~%float64 barometer                   # Height from barometer relative to start-up point [m]~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FilteredSensorData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accelerometer))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyroscope))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'magnetometer))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FilteredSensorData>))
  "Converts a ROS message object to a list"
  (cl:list 'FilteredSensorData
    (cl:cons ':header (header msg))
    (cl:cons ':accelerometer (accelerometer msg))
    (cl:cons ':gyroscope (gyroscope msg))
    (cl:cons ':magnetometer (magnetometer msg))
    (cl:cons ':barometer (barometer msg))
))
