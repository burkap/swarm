; Auto-generated. Do not edit!


(cl:in-package mav_planning_msgs-msg)


;//! \htmlinclude Polygon2D.msg.html

(cl:defclass <Polygon2D> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector mav_planning_msgs-msg:Point2D)
   :initform (cl:make-array 0 :element-type 'mav_planning_msgs-msg:Point2D :initial-element (cl:make-instance 'mav_planning_msgs-msg:Point2D))))
)

(cl:defclass Polygon2D (<Polygon2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Polygon2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Polygon2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_planning_msgs-msg:<Polygon2D> is deprecated: use mav_planning_msgs-msg:Polygon2D instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Polygon2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-msg:points-val is deprecated.  Use mav_planning_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Polygon2D>) ostream)
  "Serializes a message object of type '<Polygon2D>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Polygon2D>) istream)
  "Deserializes a message object of type '<Polygon2D>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mav_planning_msgs-msg:Point2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Polygon2D>)))
  "Returns string type for a message object of type '<Polygon2D>"
  "mav_planning_msgs/Polygon2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Polygon2D)))
  "Returns string type for a message object of type 'Polygon2D"
  "mav_planning_msgs/Polygon2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Polygon2D>)))
  "Returns md5sum for a message object of type '<Polygon2D>"
  "8f02263beef99aa03117a577a3eb879d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Polygon2D)))
  "Returns md5sum for a message object of type 'Polygon2D"
  "8f02263beef99aa03117a577a3eb879d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Polygon2D>)))
  "Returns full string definition for message of type '<Polygon2D>"
  (cl:format cl:nil "# A specification of a 2D polygon where the first and last points are assumed to be connected.~%mav_planning_msgs/Point2D[] points~%~%================================================================================~%MSG: mav_planning_msgs/Point2D~%# This contains the position of a 2D point.~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Polygon2D)))
  "Returns full string definition for message of type 'Polygon2D"
  (cl:format cl:nil "# A specification of a 2D polygon where the first and last points are assumed to be connected.~%mav_planning_msgs/Point2D[] points~%~%================================================================================~%MSG: mav_planning_msgs/Point2D~%# This contains the position of a 2D point.~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Polygon2D>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Polygon2D>))
  "Converts a ROS message object to a list"
  (cl:list 'Polygon2D
    (cl:cons ':points (points msg))
))
