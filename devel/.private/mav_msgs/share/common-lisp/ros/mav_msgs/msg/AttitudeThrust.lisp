; Auto-generated. Do not edit!


(cl:in-package mav_msgs-msg)


;//! \htmlinclude AttitudeThrust.msg.html

(cl:defclass <AttitudeThrust> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (attitude
    :reader attitude
    :initarg :attitude
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (thrust
    :reader thrust
    :initarg :thrust
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass AttitudeThrust (<AttitudeThrust>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AttitudeThrust>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AttitudeThrust)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_msgs-msg:<AttitudeThrust> is deprecated: use mav_msgs-msg:AttitudeThrust instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AttitudeThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:header-val is deprecated.  Use mav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'attitude-val :lambda-list '(m))
(cl:defmethod attitude-val ((m <AttitudeThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:attitude-val is deprecated.  Use mav_msgs-msg:attitude instead.")
  (attitude m))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <AttitudeThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:thrust-val is deprecated.  Use mav_msgs-msg:thrust instead.")
  (thrust m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AttitudeThrust>) ostream)
  "Serializes a message object of type '<AttitudeThrust>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attitude) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'thrust) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AttitudeThrust>) istream)
  "Deserializes a message object of type '<AttitudeThrust>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attitude) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'thrust) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AttitudeThrust>)))
  "Returns string type for a message object of type '<AttitudeThrust>"
  "mav_msgs/AttitudeThrust")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AttitudeThrust)))
  "Returns string type for a message object of type 'AttitudeThrust"
  "mav_msgs/AttitudeThrust")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AttitudeThrust>)))
  "Returns md5sum for a message object of type '<AttitudeThrust>"
  "7cee443b02735e42bda0ad5910302718")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AttitudeThrust)))
  "Returns md5sum for a message object of type 'AttitudeThrust"
  "7cee443b02735e42bda0ad5910302718")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AttitudeThrust>)))
  "Returns full string definition for message of type '<AttitudeThrust>"
  (cl:format cl:nil "Header header~%~%geometry_msgs/Quaternion attitude    # Attitude expressed in the header/frame_id frame.~%geometry_msgs/Vector3 thrust         # Thrust [N] expressed in the body frame.~%                                     # For a fixed-wing, usually the x-component is used.~%                                     # For a multi-rotor, usually the z-component is used.~%                                     # Set all un-used components to 0.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AttitudeThrust)))
  "Returns full string definition for message of type 'AttitudeThrust"
  (cl:format cl:nil "Header header~%~%geometry_msgs/Quaternion attitude    # Attitude expressed in the header/frame_id frame.~%geometry_msgs/Vector3 thrust         # Thrust [N] expressed in the body frame.~%                                     # For a fixed-wing, usually the x-component is used.~%                                     # For a multi-rotor, usually the z-component is used.~%                                     # Set all un-used components to 0.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AttitudeThrust>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attitude))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'thrust))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AttitudeThrust>))
  "Converts a ROS message object to a list"
  (cl:list 'AttitudeThrust
    (cl:cons ':header (header msg))
    (cl:cons ':attitude (attitude msg))
    (cl:cons ':thrust (thrust msg))
))
