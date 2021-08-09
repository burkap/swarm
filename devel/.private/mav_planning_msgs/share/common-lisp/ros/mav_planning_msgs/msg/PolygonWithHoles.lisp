; Auto-generated. Do not edit!


(cl:in-package mav_planning_msgs-msg)


;//! \htmlinclude PolygonWithHoles.msg.html

(cl:defclass <PolygonWithHoles> (roslisp-msg-protocol:ros-message)
  ((hull
    :reader hull
    :initarg :hull
    :type mav_planning_msgs-msg:Polygon2D
    :initform (cl:make-instance 'mav_planning_msgs-msg:Polygon2D))
   (holes
    :reader holes
    :initarg :holes
    :type (cl:vector mav_planning_msgs-msg:Polygon2D)
   :initform (cl:make-array 0 :element-type 'mav_planning_msgs-msg:Polygon2D :initial-element (cl:make-instance 'mav_planning_msgs-msg:Polygon2D))))
)

(cl:defclass PolygonWithHoles (<PolygonWithHoles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PolygonWithHoles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PolygonWithHoles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_planning_msgs-msg:<PolygonWithHoles> is deprecated: use mav_planning_msgs-msg:PolygonWithHoles instead.")))

(cl:ensure-generic-function 'hull-val :lambda-list '(m))
(cl:defmethod hull-val ((m <PolygonWithHoles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-msg:hull-val is deprecated.  Use mav_planning_msgs-msg:hull instead.")
  (hull m))

(cl:ensure-generic-function 'holes-val :lambda-list '(m))
(cl:defmethod holes-val ((m <PolygonWithHoles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-msg:holes-val is deprecated.  Use mav_planning_msgs-msg:holes instead.")
  (holes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PolygonWithHoles>) ostream)
  "Serializes a message object of type '<PolygonWithHoles>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hull) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'holes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'holes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PolygonWithHoles>) istream)
  "Deserializes a message object of type '<PolygonWithHoles>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hull) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'holes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'holes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mav_planning_msgs-msg:Polygon2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PolygonWithHoles>)))
  "Returns string type for a message object of type '<PolygonWithHoles>"
  "mav_planning_msgs/PolygonWithHoles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PolygonWithHoles)))
  "Returns string type for a message object of type 'PolygonWithHoles"
  "mav_planning_msgs/PolygonWithHoles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PolygonWithHoles>)))
  "Returns md5sum for a message object of type '<PolygonWithHoles>"
  "df7f266352dfcf3e4d29156dd85febf9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PolygonWithHoles)))
  "Returns md5sum for a message object of type 'PolygonWithHoles"
  "df7f266352dfcf3e4d29156dd85febf9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PolygonWithHoles>)))
  "Returns full string definition for message of type '<PolygonWithHoles>"
  (cl:format cl:nil "# A message to define a 2D polygon with holes.~%mav_planning_msgs/Polygon2D hull~%mav_planning_msgs/Polygon2D[] holes~%~%================================================================================~%MSG: mav_planning_msgs/Polygon2D~%# A specification of a 2D polygon where the first and last points are assumed to be connected.~%mav_planning_msgs/Point2D[] points~%~%================================================================================~%MSG: mav_planning_msgs/Point2D~%# This contains the position of a 2D point.~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PolygonWithHoles)))
  "Returns full string definition for message of type 'PolygonWithHoles"
  (cl:format cl:nil "# A message to define a 2D polygon with holes.~%mav_planning_msgs/Polygon2D hull~%mav_planning_msgs/Polygon2D[] holes~%~%================================================================================~%MSG: mav_planning_msgs/Polygon2D~%# A specification of a 2D polygon where the first and last points are assumed to be connected.~%mav_planning_msgs/Point2D[] points~%~%================================================================================~%MSG: mav_planning_msgs/Point2D~%# This contains the position of a 2D point.~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PolygonWithHoles>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hull))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'holes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PolygonWithHoles>))
  "Converts a ROS message object to a list"
  (cl:list 'PolygonWithHoles
    (cl:cons ':hull (hull msg))
    (cl:cons ':holes (holes msg))
))
