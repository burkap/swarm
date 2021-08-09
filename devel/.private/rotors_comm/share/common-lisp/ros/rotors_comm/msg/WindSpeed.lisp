; Auto-generated. Do not edit!


(cl:in-package rotors_comm-msg)


;//! \htmlinclude WindSpeed.msg.html

(cl:defclass <WindSpeed> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass WindSpeed (<WindSpeed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WindSpeed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WindSpeed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rotors_comm-msg:<WindSpeed> is deprecated: use rotors_comm-msg:WindSpeed instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WindSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rotors_comm-msg:header-val is deprecated.  Use rotors_comm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <WindSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rotors_comm-msg:velocity-val is deprecated.  Use rotors_comm-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WindSpeed>) ostream)
  "Serializes a message object of type '<WindSpeed>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WindSpeed>) istream)
  "Deserializes a message object of type '<WindSpeed>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WindSpeed>)))
  "Returns string type for a message object of type '<WindSpeed>"
  "rotors_comm/WindSpeed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WindSpeed)))
  "Returns string type for a message object of type 'WindSpeed"
  "rotors_comm/WindSpeed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WindSpeed>)))
  "Returns md5sum for a message object of type '<WindSpeed>"
  "ae00d2a331b8545eaf96c531128ff0ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WindSpeed)))
  "Returns md5sum for a message object of type 'WindSpeed"
  "ae00d2a331b8545eaf96c531128ff0ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WindSpeed>)))
  "Returns full string definition for message of type '<WindSpeed>"
  (cl:format cl:nil "Header header~%~%# Message should be expressed in the frame_id specified in the header.~%~%geometry_msgs/Vector3 velocity      # [m/s]~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WindSpeed)))
  "Returns full string definition for message of type 'WindSpeed"
  (cl:format cl:nil "Header header~%~%# Message should be expressed in the frame_id specified in the header.~%~%geometry_msgs/Vector3 velocity      # [m/s]~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WindSpeed>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WindSpeed>))
  "Converts a ROS message object to a list"
  (cl:list 'WindSpeed
    (cl:cons ':header (header msg))
    (cl:cons ':velocity (velocity msg))
))
