; Auto-generated. Do not edit!


(cl:in-package mav_planning_msgs-msg)


;//! \htmlinclude PointCloudWithPose.msg.html

(cl:defclass <PointCloudWithPose> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sensor_pose
    :reader sensor_pose
    :initarg :sensor_pose
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped))
   (cloud_in_sensor_frame
    :reader cloud_in_sensor_frame
    :initarg :cloud_in_sensor_frame
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass PointCloudWithPose (<PointCloudWithPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointCloudWithPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointCloudWithPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_planning_msgs-msg:<PointCloudWithPose> is deprecated: use mav_planning_msgs-msg:PointCloudWithPose instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PointCloudWithPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-msg:header-val is deprecated.  Use mav_planning_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sensor_pose-val :lambda-list '(m))
(cl:defmethod sensor_pose-val ((m <PointCloudWithPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-msg:sensor_pose-val is deprecated.  Use mav_planning_msgs-msg:sensor_pose instead.")
  (sensor_pose m))

(cl:ensure-generic-function 'cloud_in_sensor_frame-val :lambda-list '(m))
(cl:defmethod cloud_in_sensor_frame-val ((m <PointCloudWithPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-msg:cloud_in_sensor_frame-val is deprecated.  Use mav_planning_msgs-msg:cloud_in_sensor_frame instead.")
  (cloud_in_sensor_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointCloudWithPose>) ostream)
  "Serializes a message object of type '<PointCloudWithPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensor_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud_in_sensor_frame) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointCloudWithPose>) istream)
  "Deserializes a message object of type '<PointCloudWithPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensor_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud_in_sensor_frame) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointCloudWithPose>)))
  "Returns string type for a message object of type '<PointCloudWithPose>"
  "mav_planning_msgs/PointCloudWithPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointCloudWithPose)))
  "Returns string type for a message object of type 'PointCloudWithPose"
  "mav_planning_msgs/PointCloudWithPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointCloudWithPose>)))
  "Returns md5sum for a message object of type '<PointCloudWithPose>"
  "2a8b498d41262fbae6e2ab39e0965442")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointCloudWithPose)))
  "Returns md5sum for a message object of type 'PointCloudWithPose"
  "2a8b498d41262fbae6e2ab39e0965442")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointCloudWithPose>)))
  "Returns full string definition for message of type '<PointCloudWithPose>"
  (cl:format cl:nil "Header header~%geometry_msgs/TransformStamped sensor_pose~%sensor_msgs/PointCloud2 cloud_in_sensor_frame~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointCloudWithPose)))
  "Returns full string definition for message of type 'PointCloudWithPose"
  (cl:format cl:nil "Header header~%geometry_msgs/TransformStamped sensor_pose~%sensor_msgs/PointCloud2 cloud_in_sensor_frame~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointCloudWithPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensor_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud_in_sensor_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointCloudWithPose>))
  "Converts a ROS message object to a list"
  (cl:list 'PointCloudWithPose
    (cl:cons ':header (header msg))
    (cl:cons ':sensor_pose (sensor_pose msg))
    (cl:cons ':cloud_in_sensor_frame (cloud_in_sensor_frame msg))
))
