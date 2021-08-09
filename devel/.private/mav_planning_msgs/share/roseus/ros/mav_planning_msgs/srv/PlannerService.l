;; Auto-generated. Do not edit!


(when (boundp 'mav_planning_msgs::PlannerService)
  (if (not (find-package "MAV_PLANNING_MSGS"))
    (make-package "MAV_PLANNING_MSGS"))
  (shadow 'PlannerService (find-package "MAV_PLANNING_MSGS")))
(unless (find-package "MAV_PLANNING_MSGS::PLANNERSERVICE")
  (make-package "MAV_PLANNING_MSGS::PLANNERSERVICE"))
(unless (find-package "MAV_PLANNING_MSGS::PLANNERSERVICEREQUEST")
  (make-package "MAV_PLANNING_MSGS::PLANNERSERVICEREQUEST"))
(unless (find-package "MAV_PLANNING_MSGS::PLANNERSERVICERESPONSE")
  (make-package "MAV_PLANNING_MSGS::PLANNERSERVICERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass mav_planning_msgs::PlannerServiceRequest
  :super ros::object
  :slots (_start_pose _start_velocity _goal_pose _goal_velocity _bounding_box ))

(defmethod mav_planning_msgs::PlannerServiceRequest
  (:init
   (&key
    ((:start_pose __start_pose) (instance geometry_msgs::PoseStamped :init))
    ((:start_velocity __start_velocity) (instance geometry_msgs::Vector3 :init))
    ((:goal_pose __goal_pose) (instance geometry_msgs::PoseStamped :init))
    ((:goal_velocity __goal_velocity) (instance geometry_msgs::Vector3 :init))
    ((:bounding_box __bounding_box) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _start_pose __start_pose)
   (setq _start_velocity __start_velocity)
   (setq _goal_pose __goal_pose)
   (setq _goal_velocity __goal_velocity)
   (setq _bounding_box __bounding_box)
   self)
  (:start_pose
   (&rest __start_pose)
   (if (keywordp (car __start_pose))
       (send* _start_pose __start_pose)
     (progn
       (if __start_pose (setq _start_pose (car __start_pose)))
       _start_pose)))
  (:start_velocity
   (&rest __start_velocity)
   (if (keywordp (car __start_velocity))
       (send* _start_velocity __start_velocity)
     (progn
       (if __start_velocity (setq _start_velocity (car __start_velocity)))
       _start_velocity)))
  (:goal_pose
   (&rest __goal_pose)
   (if (keywordp (car __goal_pose))
       (send* _goal_pose __goal_pose)
     (progn
       (if __goal_pose (setq _goal_pose (car __goal_pose)))
       _goal_pose)))
  (:goal_velocity
   (&rest __goal_velocity)
   (if (keywordp (car __goal_velocity))
       (send* _goal_velocity __goal_velocity)
     (progn
       (if __goal_velocity (setq _goal_velocity (car __goal_velocity)))
       _goal_velocity)))
  (:bounding_box
   (&rest __bounding_box)
   (if (keywordp (car __bounding_box))
       (send* _bounding_box __bounding_box)
     (progn
       (if __bounding_box (setq _bounding_box (car __bounding_box)))
       _bounding_box)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _start_pose
    (send _start_pose :serialization-length)
    ;; geometry_msgs/Vector3 _start_velocity
    (send _start_velocity :serialization-length)
    ;; geometry_msgs/PoseStamped _goal_pose
    (send _goal_pose :serialization-length)
    ;; geometry_msgs/Vector3 _goal_velocity
    (send _goal_velocity :serialization-length)
    ;; geometry_msgs/Vector3 _bounding_box
    (send _bounding_box :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _start_pose
       (send _start_pose :serialize s)
     ;; geometry_msgs/Vector3 _start_velocity
       (send _start_velocity :serialize s)
     ;; geometry_msgs/PoseStamped _goal_pose
       (send _goal_pose :serialize s)
     ;; geometry_msgs/Vector3 _goal_velocity
       (send _goal_velocity :serialize s)
     ;; geometry_msgs/Vector3 _bounding_box
       (send _bounding_box :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _start_pose
     (send _start_pose :deserialize buf ptr-) (incf ptr- (send _start_pose :serialization-length))
   ;; geometry_msgs/Vector3 _start_velocity
     (send _start_velocity :deserialize buf ptr-) (incf ptr- (send _start_velocity :serialization-length))
   ;; geometry_msgs/PoseStamped _goal_pose
     (send _goal_pose :deserialize buf ptr-) (incf ptr- (send _goal_pose :serialization-length))
   ;; geometry_msgs/Vector3 _goal_velocity
     (send _goal_velocity :deserialize buf ptr-) (incf ptr- (send _goal_velocity :serialization-length))
   ;; geometry_msgs/Vector3 _bounding_box
     (send _bounding_box :deserialize buf ptr-) (incf ptr- (send _bounding_box :serialization-length))
   ;;
   self)
  )

(defclass mav_planning_msgs::PlannerServiceResponse
  :super ros::object
  :slots (_success _polynomial_plan _polynomial_plan_4D _sampled_plan ))

(defmethod mav_planning_msgs::PlannerServiceResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:polynomial_plan __polynomial_plan) (instance mav_planning_msgs::PolynomialTrajectory :init))
    ((:polynomial_plan_4D __polynomial_plan_4D) (instance mav_planning_msgs::PolynomialTrajectory4D :init))
    ((:sampled_plan __sampled_plan) (instance trajectory_msgs::MultiDOFJointTrajectory :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _polynomial_plan __polynomial_plan)
   (setq _polynomial_plan_4D __polynomial_plan_4D)
   (setq _sampled_plan __sampled_plan)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:polynomial_plan
   (&rest __polynomial_plan)
   (if (keywordp (car __polynomial_plan))
       (send* _polynomial_plan __polynomial_plan)
     (progn
       (if __polynomial_plan (setq _polynomial_plan (car __polynomial_plan)))
       _polynomial_plan)))
  (:polynomial_plan_4D
   (&rest __polynomial_plan_4D)
   (if (keywordp (car __polynomial_plan_4D))
       (send* _polynomial_plan_4D __polynomial_plan_4D)
     (progn
       (if __polynomial_plan_4D (setq _polynomial_plan_4D (car __polynomial_plan_4D)))
       _polynomial_plan_4D)))
  (:sampled_plan
   (&rest __sampled_plan)
   (if (keywordp (car __sampled_plan))
       (send* _sampled_plan __sampled_plan)
     (progn
       (if __sampled_plan (setq _sampled_plan (car __sampled_plan)))
       _sampled_plan)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; mav_planning_msgs/PolynomialTrajectory _polynomial_plan
    (send _polynomial_plan :serialization-length)
    ;; mav_planning_msgs/PolynomialTrajectory4D _polynomial_plan_4D
    (send _polynomial_plan_4D :serialization-length)
    ;; trajectory_msgs/MultiDOFJointTrajectory _sampled_plan
    (send _sampled_plan :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; mav_planning_msgs/PolynomialTrajectory _polynomial_plan
       (send _polynomial_plan :serialize s)
     ;; mav_planning_msgs/PolynomialTrajectory4D _polynomial_plan_4D
       (send _polynomial_plan_4D :serialize s)
     ;; trajectory_msgs/MultiDOFJointTrajectory _sampled_plan
       (send _sampled_plan :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; mav_planning_msgs/PolynomialTrajectory _polynomial_plan
     (send _polynomial_plan :deserialize buf ptr-) (incf ptr- (send _polynomial_plan :serialization-length))
   ;; mav_planning_msgs/PolynomialTrajectory4D _polynomial_plan_4D
     (send _polynomial_plan_4D :deserialize buf ptr-) (incf ptr- (send _polynomial_plan_4D :serialization-length))
   ;; trajectory_msgs/MultiDOFJointTrajectory _sampled_plan
     (send _sampled_plan :deserialize buf ptr-) (incf ptr- (send _sampled_plan :serialization-length))
   ;;
   self)
  )

(defclass mav_planning_msgs::PlannerService
  :super ros::object
  :slots ())

(setf (get mav_planning_msgs::PlannerService :md5sum-) "118771e195038ced9b4ddec299814131")
(setf (get mav_planning_msgs::PlannerService :datatype-) "mav_planning_msgs/PlannerService")
(setf (get mav_planning_msgs::PlannerService :request) mav_planning_msgs::PlannerServiceRequest)
(setf (get mav_planning_msgs::PlannerService :response) mav_planning_msgs::PlannerServiceResponse)

(defmethod mav_planning_msgs::PlannerServiceRequest
  (:response () (instance mav_planning_msgs::PlannerServiceResponse :init)))

(setf (get mav_planning_msgs::PlannerServiceRequest :md5sum-) "118771e195038ced9b4ddec299814131")
(setf (get mav_planning_msgs::PlannerServiceRequest :datatype-) "mav_planning_msgs/PlannerServiceRequest")
(setf (get mav_planning_msgs::PlannerServiceRequest :definition-)
      "#request fields
geometry_msgs/PoseStamped start_pose #start pose for the planner
geometry_msgs/Vector3 start_velocity
geometry_msgs/PoseStamped goal_pose #start pose for the planner
geometry_msgs/Vector3 goal_velocity
geometry_msgs/Vector3 bounding_box

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
# True on success, false on planning failure
bool success
# Either contains a polynomial trajectory:
mav_planning_msgs/PolynomialTrajectory polynomial_plan
mav_planning_msgs/PolynomialTrajectory4D polynomial_plan_4D
# or a MultiDOFJointTrajectory containing a sampled path (or straight-line
# waypoints, depending on the planner).
# Only one of these should be non-empty.
trajectory_msgs/MultiDOFJointTrajectory sampled_plan


================================================================================
MSG: mav_planning_msgs/PolynomialTrajectory
Header header
PolynomialSegment[] segments

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
MSG: mav_planning_msgs/PolynomialSegment
Header header
int32 num_coeffs        # order of the polynomial + 1, should match size of x[]
duration segment_time   # duration of the segment
float64[] x             # coefficients for the x-axis, INCREASING order
float64[] y             # coefficients for the y-axis, INCREASING order
float64[] z             # coefficients for the z-axis, INCREASING order
float64[] rx            # coefficients for the rotation x-vector, INCREASING order
float64[] ry            # coefficients for the rotation y-vector, INCREASING order
float64[] rz            # coefficients for the rotation z-vector, INCREASING order
## For backwards compatibility with underactuated (4DOF) commands):
float64[] yaw           # coefficients for the yaw, INCREASING order 
                        

================================================================================
MSG: mav_planning_msgs/PolynomialTrajectory4D
Header header
PolynomialSegment4D[] segments

================================================================================
MSG: mav_planning_msgs/PolynomialSegment4D
Header header
int32 num_coeffs        # order of the polynomial + 1, should match size of x[]
duration segment_time   # duration of the segment
float64[] x             # coefficients for the x-axis, INCREASING order
float64[] y             # coefficients for the y-axis, INCREASING order
float64[] z             # coefficients for the z-axis, INCREASING order
float64[] yaw           # coefficients for the yaw, INCREASING order

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectory
# The header is used to specify the coordinate frame and the reference time for the trajectory durations
Header header

# A representation of a multi-dof joint trajectory (each point is a transformation)
# Each point along the trajectory will include an array of positions/velocities/accelerations
# that has the same length as the array of joint names, and has the same order of joints as 
# the joint names array.

string[] joint_names
MultiDOFJointTrajectoryPoint[] points

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint
# Each multi-dof joint can specify a transform (up to 6 DOF)
geometry_msgs/Transform[] transforms

# There can be a velocity specified for the origin of the joint 
geometry_msgs/Twist[] velocities

# There can be an acceleration specified for the origin of the joint 
geometry_msgs/Twist[] accelerations

duration time_from_start

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
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular
")

(setf (get mav_planning_msgs::PlannerServiceResponse :md5sum-) "118771e195038ced9b4ddec299814131")
(setf (get mav_planning_msgs::PlannerServiceResponse :datatype-) "mav_planning_msgs/PlannerServiceResponse")
(setf (get mav_planning_msgs::PlannerServiceResponse :definition-)
      "#request fields
geometry_msgs/PoseStamped start_pose #start pose for the planner
geometry_msgs/Vector3 start_velocity
geometry_msgs/PoseStamped goal_pose #start pose for the planner
geometry_msgs/Vector3 goal_velocity
geometry_msgs/Vector3 bounding_box

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
# True on success, false on planning failure
bool success
# Either contains a polynomial trajectory:
mav_planning_msgs/PolynomialTrajectory polynomial_plan
mav_planning_msgs/PolynomialTrajectory4D polynomial_plan_4D
# or a MultiDOFJointTrajectory containing a sampled path (or straight-line
# waypoints, depending on the planner).
# Only one of these should be non-empty.
trajectory_msgs/MultiDOFJointTrajectory sampled_plan


================================================================================
MSG: mav_planning_msgs/PolynomialTrajectory
Header header
PolynomialSegment[] segments

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
MSG: mav_planning_msgs/PolynomialSegment
Header header
int32 num_coeffs        # order of the polynomial + 1, should match size of x[]
duration segment_time   # duration of the segment
float64[] x             # coefficients for the x-axis, INCREASING order
float64[] y             # coefficients for the y-axis, INCREASING order
float64[] z             # coefficients for the z-axis, INCREASING order
float64[] rx            # coefficients for the rotation x-vector, INCREASING order
float64[] ry            # coefficients for the rotation y-vector, INCREASING order
float64[] rz            # coefficients for the rotation z-vector, INCREASING order
## For backwards compatibility with underactuated (4DOF) commands):
float64[] yaw           # coefficients for the yaw, INCREASING order 
                        

================================================================================
MSG: mav_planning_msgs/PolynomialTrajectory4D
Header header
PolynomialSegment4D[] segments

================================================================================
MSG: mav_planning_msgs/PolynomialSegment4D
Header header
int32 num_coeffs        # order of the polynomial + 1, should match size of x[]
duration segment_time   # duration of the segment
float64[] x             # coefficients for the x-axis, INCREASING order
float64[] y             # coefficients for the y-axis, INCREASING order
float64[] z             # coefficients for the z-axis, INCREASING order
float64[] yaw           # coefficients for the yaw, INCREASING order

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectory
# The header is used to specify the coordinate frame and the reference time for the trajectory durations
Header header

# A representation of a multi-dof joint trajectory (each point is a transformation)
# Each point along the trajectory will include an array of positions/velocities/accelerations
# that has the same length as the array of joint names, and has the same order of joints as 
# the joint names array.

string[] joint_names
MultiDOFJointTrajectoryPoint[] points

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint
# Each multi-dof joint can specify a transform (up to 6 DOF)
geometry_msgs/Transform[] transforms

# There can be a velocity specified for the origin of the joint 
geometry_msgs/Twist[] velocities

# There can be an acceleration specified for the origin of the joint 
geometry_msgs/Twist[] accelerations

duration time_from_start

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
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular
")



(provide :mav_planning_msgs/PlannerService "118771e195038ced9b4ddec299814131")


