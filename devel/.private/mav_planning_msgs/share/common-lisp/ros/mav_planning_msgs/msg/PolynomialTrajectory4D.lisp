; Auto-generated. Do not edit!


(cl:in-package mav_planning_msgs-msg)


;//! \htmlinclude PolynomialTrajectory4D.msg.html

(cl:defclass <PolynomialTrajectory4D> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (segments
    :reader segments
    :initarg :segments
    :type (cl:vector mav_planning_msgs-msg:PolynomialSegment4D)
   :initform (cl:make-array 0 :element-type 'mav_planning_msgs-msg:PolynomialSegment4D :initial-element (cl:make-instance 'mav_planning_msgs-msg:PolynomialSegment4D))))
)

(cl:defclass PolynomialTrajectory4D (<PolynomialTrajectory4D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PolynomialTrajectory4D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PolynomialTrajectory4D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_planning_msgs-msg:<PolynomialTrajectory4D> is deprecated: use mav_planning_msgs-msg:PolynomialTrajectory4D instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PolynomialTrajectory4D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-msg:header-val is deprecated.  Use mav_planning_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'segments-val :lambda-list '(m))
(cl:defmethod segments-val ((m <PolynomialTrajectory4D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-msg:segments-val is deprecated.  Use mav_planning_msgs-msg:segments instead.")
  (segments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PolynomialTrajectory4D>) ostream)
  "Serializes a message object of type '<PolynomialTrajectory4D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'segments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PolynomialTrajectory4D>) istream)
  "Deserializes a message object of type '<PolynomialTrajectory4D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mav_planning_msgs-msg:PolynomialSegment4D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PolynomialTrajectory4D>)))
  "Returns string type for a message object of type '<PolynomialTrajectory4D>"
  "mav_planning_msgs/PolynomialTrajectory4D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PolynomialTrajectory4D)))
  "Returns string type for a message object of type 'PolynomialTrajectory4D"
  "mav_planning_msgs/PolynomialTrajectory4D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PolynomialTrajectory4D>)))
  "Returns md5sum for a message object of type '<PolynomialTrajectory4D>"
  "4d68d15524ede489eecd674bb6dc3ee8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PolynomialTrajectory4D)))
  "Returns md5sum for a message object of type 'PolynomialTrajectory4D"
  "4d68d15524ede489eecd674bb6dc3ee8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PolynomialTrajectory4D>)))
  "Returns full string definition for message of type '<PolynomialTrajectory4D>"
  (cl:format cl:nil "Header header~%PolynomialSegment4D[] segments~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mav_planning_msgs/PolynomialSegment4D~%Header header~%int32 num_coeffs        # order of the polynomial + 1, should match size of x[]~%duration segment_time   # duration of the segment~%float64[] x             # coefficients for the x-axis, INCREASING order~%float64[] y             # coefficients for the y-axis, INCREASING order~%float64[] z             # coefficients for the z-axis, INCREASING order~%float64[] yaw           # coefficients for the yaw, INCREASING order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PolynomialTrajectory4D)))
  "Returns full string definition for message of type 'PolynomialTrajectory4D"
  (cl:format cl:nil "Header header~%PolynomialSegment4D[] segments~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mav_planning_msgs/PolynomialSegment4D~%Header header~%int32 num_coeffs        # order of the polynomial + 1, should match size of x[]~%duration segment_time   # duration of the segment~%float64[] x             # coefficients for the x-axis, INCREASING order~%float64[] y             # coefficients for the y-axis, INCREASING order~%float64[] z             # coefficients for the z-axis, INCREASING order~%float64[] yaw           # coefficients for the yaw, INCREASING order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PolynomialTrajectory4D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PolynomialTrajectory4D>))
  "Converts a ROS message object to a list"
  (cl:list 'PolynomialTrajectory4D
    (cl:cons ':header (header msg))
    (cl:cons ':segments (segments msg))
))
