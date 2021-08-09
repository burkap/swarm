;; Auto-generated. Do not edit!


(when (boundp 'mav_planning_msgs::PointCloudWithPose)
  (if (not (find-package "MAV_PLANNING_MSGS"))
    (make-package "MAV_PLANNING_MSGS"))
  (shadow 'PointCloudWithPose (find-package "MAV_PLANNING_MSGS")))
(unless (find-package "MAV_PLANNING_MSGS::POINTCLOUDWITHPOSE")
  (make-package "MAV_PLANNING_MSGS::POINTCLOUDWITHPOSE"))

(in-package "ROS")
;;//! \htmlinclude PointCloudWithPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mav_planning_msgs::PointCloudWithPose
  :super ros::object
  :slots (_header _sensor_pose _cloud_in_sensor_frame ))

(defmethod mav_planning_msgs::PointCloudWithPose
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sensor_pose __sensor_pose) (instance geometry_msgs::TransformStamped :init))
    ((:cloud_in_sensor_frame __cloud_in_sensor_frame) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sensor_pose __sensor_pose)
   (setq _cloud_in_sensor_frame __cloud_in_sensor_frame)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sensor_pose
   (&rest __sensor_pose)
   (if (keywordp (car __sensor_pose))
       (send* _sensor_pose __sensor_pose)
     (progn
       (if __sensor_pose (setq _sensor_pose (car __sensor_pose)))
       _sensor_pose)))
  (:cloud_in_sensor_frame
   (&rest __cloud_in_sensor_frame)
   (if (keywordp (car __cloud_in_sensor_frame))
       (send* _cloud_in_sensor_frame __cloud_in_sensor_frame)
     (progn
       (if __cloud_in_sensor_frame (setq _cloud_in_sensor_frame (car __cloud_in_sensor_frame)))
       _cloud_in_sensor_frame)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/TransformStamped _sensor_pose
    (send _sensor_pose :serialization-length)
    ;; sensor_msgs/PointCloud2 _cloud_in_sensor_frame
    (send _cloud_in_sensor_frame :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/TransformStamped _sensor_pose
       (send _sensor_pose :serialize s)
     ;; sensor_msgs/PointCloud2 _cloud_in_sensor_frame
       (send _cloud_in_sensor_frame :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/TransformStamped _sensor_pose
     (send _sensor_pose :deserialize buf ptr-) (incf ptr- (send _sensor_pose :serialization-length))
   ;; sensor_msgs/PointCloud2 _cloud_in_sensor_frame
     (send _cloud_in_sensor_frame :deserialize buf ptr-) (incf ptr- (send _cloud_in_sensor_frame :serialization-length))
   ;;
   self)
  )

(setf (get mav_planning_msgs::PointCloudWithPose :md5sum-) "2a8b498d41262fbae6e2ab39e0965442")
(setf (get mav_planning_msgs::PointCloudWithPose :datatype-) "mav_planning_msgs/PointCloudWithPose")
(setf (get mav_planning_msgs::PointCloudWithPose :definition-)
      "Header header
geometry_msgs/TransformStamped sensor_pose
sensor_msgs/PointCloud2 cloud_in_sensor_frame
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

")



(provide :mav_planning_msgs/PointCloudWithPose "2a8b498d41262fbae6e2ab39e0965442")


