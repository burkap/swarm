; Auto-generated. Do not edit!


(cl:in-package mav_msgs-msg)


;//! \htmlinclude TorqueThrust.msg.html

(cl:defclass <TorqueThrust> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (torque
    :reader torque
    :initarg :torque
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (thrust
    :reader thrust
    :initarg :thrust
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass TorqueThrust (<TorqueThrust>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TorqueThrust>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TorqueThrust)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_msgs-msg:<TorqueThrust> is deprecated: use mav_msgs-msg:TorqueThrust instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TorqueThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:header-val is deprecated.  Use mav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <TorqueThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:torque-val is deprecated.  Use mav_msgs-msg:torque instead.")
  (torque m))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <TorqueThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:thrust-val is deprecated.  Use mav_msgs-msg:thrust instead.")
  (thrust m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TorqueThrust>) ostream)
  "Serializes a message object of type '<TorqueThrust>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'torque) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'thrust) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TorqueThrust>) istream)
  "Deserializes a message object of type '<TorqueThrust>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'torque) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'thrust) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TorqueThrust>)))
  "Returns string type for a message object of type '<TorqueThrust>"
  "mav_msgs/TorqueThrust")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TorqueThrust)))
  "Returns string type for a message object of type 'TorqueThrust"
  "mav_msgs/TorqueThrust")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TorqueThrust>)))
  "Returns md5sum for a message object of type '<TorqueThrust>"
  "81293743ae52683b61e39c21bc0b30db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TorqueThrust)))
  "Returns md5sum for a message object of type 'TorqueThrust"
  "81293743ae52683b61e39c21bc0b30db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TorqueThrust>)))
  "Returns full string definition for message of type '<TorqueThrust>"
  (cl:format cl:nil "Header header~%~%# We use the coordinate frames with the following convention:~%#   x: forward~%#   y: left~%#   z: up~%~%geometry_msgs/Vector3 torque  # Torque expressed in the body frame [Nm].~%geometry_msgs/Vector3 thrust  # Thrust [N] expressed in the body frame. ~%                              # For a fixed-wing, usually the x-component is used.~%                              # For a multi-rotor, usually the z-component is used. ~%                              # Set all un-used components to 0.  ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TorqueThrust)))
  "Returns full string definition for message of type 'TorqueThrust"
  (cl:format cl:nil "Header header~%~%# We use the coordinate frames with the following convention:~%#   x: forward~%#   y: left~%#   z: up~%~%geometry_msgs/Vector3 torque  # Torque expressed in the body frame [Nm].~%geometry_msgs/Vector3 thrust  # Thrust [N] expressed in the body frame. ~%                              # For a fixed-wing, usually the x-component is used.~%                              # For a multi-rotor, usually the z-component is used. ~%                              # Set all un-used components to 0.  ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TorqueThrust>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'torque))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'thrust))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TorqueThrust>))
  "Converts a ROS message object to a list"
  (cl:list 'TorqueThrust
    (cl:cons ':header (header msg))
    (cl:cons ':torque (torque msg))
    (cl:cons ':thrust (thrust msg))
))
