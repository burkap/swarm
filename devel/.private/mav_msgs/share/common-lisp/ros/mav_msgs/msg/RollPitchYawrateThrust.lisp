; Auto-generated. Do not edit!


(cl:in-package mav_msgs-msg)


;//! \htmlinclude RollPitchYawrateThrust.msg.html

(cl:defclass <RollPitchYawrateThrust> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
    :type cl:float
    :initform 0.0)
   (thrust
    :reader thrust
    :initarg :thrust
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass RollPitchYawrateThrust (<RollPitchYawrateThrust>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RollPitchYawrateThrust>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RollPitchYawrateThrust)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_msgs-msg:<RollPitchYawrateThrust> is deprecated: use mav_msgs-msg:RollPitchYawrateThrust instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RollPitchYawrateThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:header-val is deprecated.  Use mav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <RollPitchYawrateThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:roll-val is deprecated.  Use mav_msgs-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <RollPitchYawrateThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:pitch-val is deprecated.  Use mav_msgs-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <RollPitchYawrateThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:yaw_rate-val is deprecated.  Use mav_msgs-msg:yaw_rate instead.")
  (yaw_rate m))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <RollPitchYawrateThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:thrust-val is deprecated.  Use mav_msgs-msg:thrust instead.")
  (thrust m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RollPitchYawrateThrust>) ostream)
  "Serializes a message object of type '<RollPitchYawrateThrust>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'thrust) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RollPitchYawrateThrust>) istream)
  "Deserializes a message object of type '<RollPitchYawrateThrust>"
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
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_rate) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'thrust) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RollPitchYawrateThrust>)))
  "Returns string type for a message object of type '<RollPitchYawrateThrust>"
  "mav_msgs/RollPitchYawrateThrust")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RollPitchYawrateThrust)))
  "Returns string type for a message object of type 'RollPitchYawrateThrust"
  "mav_msgs/RollPitchYawrateThrust")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RollPitchYawrateThrust>)))
  "Returns md5sum for a message object of type '<RollPitchYawrateThrust>"
  "10a56a30857affade0889a3662fc2bc9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RollPitchYawrateThrust)))
  "Returns md5sum for a message object of type 'RollPitchYawrateThrust"
  "10a56a30857affade0889a3662fc2bc9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RollPitchYawrateThrust>)))
  "Returns full string definition for message of type '<RollPitchYawrateThrust>"
  (cl:format cl:nil "Header header~%~%# We use the coordinate frames with the following convention:~%#   x: forward~%#   y: left~%#   z: up~%~%# rotation convention (z-y'-x''):~%# yaw rotates around fixed frame's z axis~%# pitch rotates around new y-axis (y')~%# roll rotates around new x-axis (x'')~%~%# This is a convenience-message to support that low-level (microcontroller-based) state~%# estimators may not have knowledge about the absolute yaw.~%# Roll- and pitch-angle should be specified in the header/frame_id frame~%float64 roll                   # Roll angle [rad]~%float64 pitch                  # Pitch angle  [rad]~%float64 yaw_rate               # Yaw rate around z-axis [rad/s]~%~%geometry_msgs/Vector3 thrust   # Thrust [N] expressed in the body frame.~%                               # For a fixed-wing, usually the x-component is used.~%                               # For a multi-rotor, usually the z-component is used.~%                               # Set all un-used components to 0.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RollPitchYawrateThrust)))
  "Returns full string definition for message of type 'RollPitchYawrateThrust"
  (cl:format cl:nil "Header header~%~%# We use the coordinate frames with the following convention:~%#   x: forward~%#   y: left~%#   z: up~%~%# rotation convention (z-y'-x''):~%# yaw rotates around fixed frame's z axis~%# pitch rotates around new y-axis (y')~%# roll rotates around new x-axis (x'')~%~%# This is a convenience-message to support that low-level (microcontroller-based) state~%# estimators may not have knowledge about the absolute yaw.~%# Roll- and pitch-angle should be specified in the header/frame_id frame~%float64 roll                   # Roll angle [rad]~%float64 pitch                  # Pitch angle  [rad]~%float64 yaw_rate               # Yaw rate around z-axis [rad/s]~%~%geometry_msgs/Vector3 thrust   # Thrust [N] expressed in the body frame.~%                               # For a fixed-wing, usually the x-component is used.~%                               # For a multi-rotor, usually the z-component is used.~%                               # Set all un-used components to 0.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RollPitchYawrateThrust>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'thrust))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RollPitchYawrateThrust>))
  "Converts a ROS message object to a list"
  (cl:list 'RollPitchYawrateThrust
    (cl:cons ':header (header msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw_rate (yaw_rate msg))
    (cl:cons ':thrust (thrust msg))
))
