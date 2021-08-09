; Auto-generated. Do not edit!


(cl:in-package mav_msgs-msg)


;//! \htmlinclude DroneState.msg.html

(cl:defclass <DroneState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular_acceleration
    :reader angular_acceleration
    :initarg :angular_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass DroneState (<DroneState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DroneState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DroneState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_msgs-msg:<DroneState> is deprecated: use mav_msgs-msg:DroneState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DroneState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:header-val is deprecated.  Use mav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <DroneState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:position-val is deprecated.  Use mav_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <DroneState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:linear_velocity-val is deprecated.  Use mav_msgs-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <DroneState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:linear_acceleration-val is deprecated.  Use mav_msgs-msg:linear_acceleration instead.")
  (linear_acceleration m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <DroneState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:orientation-val is deprecated.  Use mav_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <DroneState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:angular_velocity-val is deprecated.  Use mav_msgs-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'angular_acceleration-val :lambda-list '(m))
(cl:defmethod angular_acceleration-val ((m <DroneState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:angular_acceleration-val is deprecated.  Use mav_msgs-msg:angular_acceleration instead.")
  (angular_acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DroneState>) ostream)
  "Serializes a message object of type '<DroneState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_acceleration) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DroneState>) istream)
  "Deserializes a message object of type '<DroneState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_acceleration) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DroneState>)))
  "Returns string type for a message object of type '<DroneState>"
  "mav_msgs/DroneState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroneState)))
  "Returns string type for a message object of type 'DroneState"
  "mav_msgs/DroneState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DroneState>)))
  "Returns md5sum for a message object of type '<DroneState>"
  "a32a14422af99ac7618c93ffa3457ceb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DroneState)))
  "Returns md5sum for a message object of type 'DroneState"
  "a32a14422af99ac7618c93ffa3457ceb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DroneState>)))
  "Returns full string definition for message of type '<DroneState>"
  (cl:format cl:nil "Header header~%~%# This message defines the drone state.~%~%# We use the coordinate frames with the following convention:~%#   x: forward~%#   y: left~%#   z: up~%~%geometry_msgs/Vector3 position 					                        # Drone position [m].~%geometry_msgs/Vector3 linear_velocity                           # Drone linear velocity [m/s].~%geometry_msgs/Vector3 linear_acceleration                       # Drone linear acceleration [m/s^2].~%~%geometry_msgs/Quaternion orientation                            # Drone orientation expressed in quaternions.~%geometry_msgs/Vector3 angular_velocity                          # Drone angular velocity [rad/s].~%geometry_msgs/Vector3 angular_acceleration                      # Drone angular acceleration [rad/s^2].~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DroneState)))
  "Returns full string definition for message of type 'DroneState"
  (cl:format cl:nil "Header header~%~%# This message defines the drone state.~%~%# We use the coordinate frames with the following convention:~%#   x: forward~%#   y: left~%#   z: up~%~%geometry_msgs/Vector3 position 					                        # Drone position [m].~%geometry_msgs/Vector3 linear_velocity                           # Drone linear velocity [m/s].~%geometry_msgs/Vector3 linear_acceleration                       # Drone linear acceleration [m/s^2].~%~%geometry_msgs/Quaternion orientation                            # Drone orientation expressed in quaternions.~%geometry_msgs/Vector3 angular_velocity                          # Drone angular velocity [rad/s].~%geometry_msgs/Vector3 angular_acceleration                      # Drone angular acceleration [rad/s^2].~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DroneState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_acceleration))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DroneState>))
  "Converts a ROS message object to a list"
  (cl:list 'DroneState
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':linear_acceleration (linear_acceleration msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':angular_acceleration (angular_acceleration msg))
))
