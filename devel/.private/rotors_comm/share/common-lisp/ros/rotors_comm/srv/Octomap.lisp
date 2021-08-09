; Auto-generated. Do not edit!


(cl:in-package rotors_comm-srv)


;//! \htmlinclude Octomap-request.msg.html

(cl:defclass <Octomap-request> (roslisp-msg-protocol:ros-message)
  ((bounding_box_origin
    :reader bounding_box_origin
    :initarg :bounding_box_origin
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (bounding_box_lengths
    :reader bounding_box_lengths
    :initarg :bounding_box_lengths
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (leaf_size
    :reader leaf_size
    :initarg :leaf_size
    :type cl:float
    :initform 0.0)
   (publish_octomap
    :reader publish_octomap
    :initarg :publish_octomap
    :type cl:boolean
    :initform cl:nil)
   (filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass Octomap-request (<Octomap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Octomap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Octomap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rotors_comm-srv:<Octomap-request> is deprecated: use rotors_comm-srv:Octomap-request instead.")))

(cl:ensure-generic-function 'bounding_box_origin-val :lambda-list '(m))
(cl:defmethod bounding_box_origin-val ((m <Octomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rotors_comm-srv:bounding_box_origin-val is deprecated.  Use rotors_comm-srv:bounding_box_origin instead.")
  (bounding_box_origin m))

(cl:ensure-generic-function 'bounding_box_lengths-val :lambda-list '(m))
(cl:defmethod bounding_box_lengths-val ((m <Octomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rotors_comm-srv:bounding_box_lengths-val is deprecated.  Use rotors_comm-srv:bounding_box_lengths instead.")
  (bounding_box_lengths m))

(cl:ensure-generic-function 'leaf_size-val :lambda-list '(m))
(cl:defmethod leaf_size-val ((m <Octomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rotors_comm-srv:leaf_size-val is deprecated.  Use rotors_comm-srv:leaf_size instead.")
  (leaf_size m))

(cl:ensure-generic-function 'publish_octomap-val :lambda-list '(m))
(cl:defmethod publish_octomap-val ((m <Octomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rotors_comm-srv:publish_octomap-val is deprecated.  Use rotors_comm-srv:publish_octomap instead.")
  (publish_octomap m))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <Octomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rotors_comm-srv:filename-val is deprecated.  Use rotors_comm-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Octomap-request>) ostream)
  "Serializes a message object of type '<Octomap-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box_origin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box_lengths) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leaf_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'publish_octomap) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Octomap-request>) istream)
  "Deserializes a message object of type '<Octomap-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box_origin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box_lengths) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leaf_size) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'publish_octomap) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Octomap-request>)))
  "Returns string type for a service object of type '<Octomap-request>"
  "rotors_comm/OctomapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Octomap-request)))
  "Returns string type for a service object of type 'Octomap-request"
  "rotors_comm/OctomapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Octomap-request>)))
  "Returns md5sum for a message object of type '<Octomap-request>"
  "a0b5f40a1676bf2554580b1ee723114a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Octomap-request)))
  "Returns md5sum for a message object of type 'Octomap-request"
  "a0b5f40a1676bf2554580b1ee723114a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Octomap-request>)))
  "Returns full string definition for message of type '<Octomap-request>"
  (cl:format cl:nil "# The center point of the axis-aligned bounding box in the global frame~%geometry_msgs/Point bounding_box_origin~%# The 3 side lenghts of the axis-aligned bounding box~%geometry_msgs/Point bounding_box_lengths~%# The leaf size or resolution of the octomap~%float64 leaf_size~%# Indicate if the generated octomap should be published.~%bool publish_octomap~%# The filename under which the octomap should be stored (only stored if set)~%string filename~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Octomap-request)))
  "Returns full string definition for message of type 'Octomap-request"
  (cl:format cl:nil "# The center point of the axis-aligned bounding box in the global frame~%geometry_msgs/Point bounding_box_origin~%# The 3 side lenghts of the axis-aligned bounding box~%geometry_msgs/Point bounding_box_lengths~%# The leaf size or resolution of the octomap~%float64 leaf_size~%# Indicate if the generated octomap should be published.~%bool publish_octomap~%# The filename under which the octomap should be stored (only stored if set)~%string filename~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Octomap-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box_origin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box_lengths))
     8
     1
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Octomap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Octomap-request
    (cl:cons ':bounding_box_origin (bounding_box_origin msg))
    (cl:cons ':bounding_box_lengths (bounding_box_lengths msg))
    (cl:cons ':leaf_size (leaf_size msg))
    (cl:cons ':publish_octomap (publish_octomap msg))
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude Octomap-response.msg.html

(cl:defclass <Octomap-response> (roslisp-msg-protocol:ros-message)
  ((map
    :reader map
    :initarg :map
    :type octomap_msgs-msg:Octomap
    :initform (cl:make-instance 'octomap_msgs-msg:Octomap))
   (origin_latitude
    :reader origin_latitude
    :initarg :origin_latitude
    :type cl:float
    :initform 0.0)
   (origin_longitude
    :reader origin_longitude
    :initarg :origin_longitude
    :type cl:float
    :initform 0.0)
   (origin_altitude
    :reader origin_altitude
    :initarg :origin_altitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass Octomap-response (<Octomap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Octomap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Octomap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rotors_comm-srv:<Octomap-response> is deprecated: use rotors_comm-srv:Octomap-response instead.")))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <Octomap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rotors_comm-srv:map-val is deprecated.  Use rotors_comm-srv:map instead.")
  (map m))

(cl:ensure-generic-function 'origin_latitude-val :lambda-list '(m))
(cl:defmethod origin_latitude-val ((m <Octomap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rotors_comm-srv:origin_latitude-val is deprecated.  Use rotors_comm-srv:origin_latitude instead.")
  (origin_latitude m))

(cl:ensure-generic-function 'origin_longitude-val :lambda-list '(m))
(cl:defmethod origin_longitude-val ((m <Octomap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rotors_comm-srv:origin_longitude-val is deprecated.  Use rotors_comm-srv:origin_longitude instead.")
  (origin_longitude m))

(cl:ensure-generic-function 'origin_altitude-val :lambda-list '(m))
(cl:defmethod origin_altitude-val ((m <Octomap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rotors_comm-srv:origin_altitude-val is deprecated.  Use rotors_comm-srv:origin_altitude instead.")
  (origin_altitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Octomap-response>) ostream)
  "Serializes a message object of type '<Octomap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'origin_latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'origin_longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'origin_altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Octomap-response>) istream)
  "Deserializes a message object of type '<Octomap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'origin_latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'origin_longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'origin_altitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Octomap-response>)))
  "Returns string type for a service object of type '<Octomap-response>"
  "rotors_comm/OctomapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Octomap-response)))
  "Returns string type for a service object of type 'Octomap-response"
  "rotors_comm/OctomapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Octomap-response>)))
  "Returns md5sum for a message object of type '<Octomap-response>"
  "a0b5f40a1676bf2554580b1ee723114a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Octomap-response)))
  "Returns md5sum for a message object of type 'Octomap-response"
  "a0b5f40a1676bf2554580b1ee723114a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Octomap-response>)))
  "Returns full string definition for message of type '<Octomap-response>"
  (cl:format cl:nil "# The created octomap in gazebo coordinates~%octomap_msgs/Octomap map~%# The latitude of the gazebo coordinates origin [deg]~%float64 origin_latitude~%# The longitude of the gazebo coordinates origin [deg]~%float64 origin_longitude~%# The altitude of the gazebo coordinates origin [m]~%float64 origin_altitude~%~%~%================================================================================~%MSG: octomap_msgs/Octomap~%# A 3D map in binary format, as Octree~%Header header~%~%# Flag to denote a binary (only free/occupied) or full occupancy octree (.bt/.ot file)~%bool binary~%~%# Class id of the contained octree ~%string id~%~%# Resolution (in m) of the smallest octree nodes~%float64 resolution~%~%# binary serialization of octree, use conversions.h to read and write octrees~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Octomap-response)))
  "Returns full string definition for message of type 'Octomap-response"
  (cl:format cl:nil "# The created octomap in gazebo coordinates~%octomap_msgs/Octomap map~%# The latitude of the gazebo coordinates origin [deg]~%float64 origin_latitude~%# The longitude of the gazebo coordinates origin [deg]~%float64 origin_longitude~%# The altitude of the gazebo coordinates origin [m]~%float64 origin_altitude~%~%~%================================================================================~%MSG: octomap_msgs/Octomap~%# A 3D map in binary format, as Octree~%Header header~%~%# Flag to denote a binary (only free/occupied) or full occupancy octree (.bt/.ot file)~%bool binary~%~%# Class id of the contained octree ~%string id~%~%# Resolution (in m) of the smallest octree nodes~%float64 resolution~%~%# binary serialization of octree, use conversions.h to read and write octrees~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Octomap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Octomap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Octomap-response
    (cl:cons ':map (map msg))
    (cl:cons ':origin_latitude (origin_latitude msg))
    (cl:cons ':origin_longitude (origin_longitude msg))
    (cl:cons ':origin_altitude (origin_altitude msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Octomap)))
  'Octomap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Octomap)))
  'Octomap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Octomap)))
  "Returns string type for a service object of type '<Octomap>"
  "rotors_comm/Octomap")