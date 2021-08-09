; Auto-generated. Do not edit!


(cl:in-package mav_planning_msgs-srv)


;//! \htmlinclude PlannerService-request.msg.html

(cl:defclass <PlannerService-request> (roslisp-msg-protocol:ros-message)
  ((start_pose
    :reader start_pose
    :initarg :start_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (start_velocity
    :reader start_velocity
    :initarg :start_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (goal_pose
    :reader goal_pose
    :initarg :goal_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal_velocity
    :reader goal_velocity
    :initarg :goal_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (bounding_box
    :reader bounding_box
    :initarg :bounding_box
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass PlannerService-request (<PlannerService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_planning_msgs-srv:<PlannerService-request> is deprecated: use mav_planning_msgs-srv:PlannerService-request instead.")))

(cl:ensure-generic-function 'start_pose-val :lambda-list '(m))
(cl:defmethod start_pose-val ((m <PlannerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-srv:start_pose-val is deprecated.  Use mav_planning_msgs-srv:start_pose instead.")
  (start_pose m))

(cl:ensure-generic-function 'start_velocity-val :lambda-list '(m))
(cl:defmethod start_velocity-val ((m <PlannerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-srv:start_velocity-val is deprecated.  Use mav_planning_msgs-srv:start_velocity instead.")
  (start_velocity m))

(cl:ensure-generic-function 'goal_pose-val :lambda-list '(m))
(cl:defmethod goal_pose-val ((m <PlannerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-srv:goal_pose-val is deprecated.  Use mav_planning_msgs-srv:goal_pose instead.")
  (goal_pose m))

(cl:ensure-generic-function 'goal_velocity-val :lambda-list '(m))
(cl:defmethod goal_velocity-val ((m <PlannerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-srv:goal_velocity-val is deprecated.  Use mav_planning_msgs-srv:goal_velocity instead.")
  (goal_velocity m))

(cl:ensure-generic-function 'bounding_box-val :lambda-list '(m))
(cl:defmethod bounding_box-val ((m <PlannerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-srv:bounding_box-val is deprecated.  Use mav_planning_msgs-srv:bounding_box instead.")
  (bounding_box m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerService-request>) ostream)
  "Serializes a message object of type '<PlannerService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerService-request>) istream)
  "Deserializes a message object of type '<PlannerService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerService-request>)))
  "Returns string type for a service object of type '<PlannerService-request>"
  "mav_planning_msgs/PlannerServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerService-request)))
  "Returns string type for a service object of type 'PlannerService-request"
  "mav_planning_msgs/PlannerServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerService-request>)))
  "Returns md5sum for a message object of type '<PlannerService-request>"
  "118771e195038ced9b4ddec299814131")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerService-request)))
  "Returns md5sum for a message object of type 'PlannerService-request"
  "118771e195038ced9b4ddec299814131")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerService-request>)))
  "Returns full string definition for message of type '<PlannerService-request>"
  (cl:format cl:nil "#request fields~%geometry_msgs/PoseStamped start_pose #start pose for the planner~%geometry_msgs/Vector3 start_velocity~%geometry_msgs/PoseStamped goal_pose #start pose for the planner~%geometry_msgs/Vector3 goal_velocity~%geometry_msgs/Vector3 bounding_box~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerService-request)))
  "Returns full string definition for message of type 'PlannerService-request"
  (cl:format cl:nil "#request fields~%geometry_msgs/PoseStamped start_pose #start pose for the planner~%geometry_msgs/Vector3 start_velocity~%geometry_msgs/PoseStamped goal_pose #start pose for the planner~%geometry_msgs/Vector3 goal_velocity~%geometry_msgs/Vector3 bounding_box~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerService-request
    (cl:cons ':start_pose (start_pose msg))
    (cl:cons ':start_velocity (start_velocity msg))
    (cl:cons ':goal_pose (goal_pose msg))
    (cl:cons ':goal_velocity (goal_velocity msg))
    (cl:cons ':bounding_box (bounding_box msg))
))
;//! \htmlinclude PlannerService-response.msg.html

(cl:defclass <PlannerService-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (polynomial_plan
    :reader polynomial_plan
    :initarg :polynomial_plan
    :type mav_planning_msgs-msg:PolynomialTrajectory
    :initform (cl:make-instance 'mav_planning_msgs-msg:PolynomialTrajectory))
   (polynomial_plan_4D
    :reader polynomial_plan_4D
    :initarg :polynomial_plan_4D
    :type mav_planning_msgs-msg:PolynomialTrajectory4D
    :initform (cl:make-instance 'mav_planning_msgs-msg:PolynomialTrajectory4D))
   (sampled_plan
    :reader sampled_plan
    :initarg :sampled_plan
    :type trajectory_msgs-msg:MultiDOFJointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:MultiDOFJointTrajectory)))
)

(cl:defclass PlannerService-response (<PlannerService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_planning_msgs-srv:<PlannerService-response> is deprecated: use mav_planning_msgs-srv:PlannerService-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PlannerService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-srv:success-val is deprecated.  Use mav_planning_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'polynomial_plan-val :lambda-list '(m))
(cl:defmethod polynomial_plan-val ((m <PlannerService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-srv:polynomial_plan-val is deprecated.  Use mav_planning_msgs-srv:polynomial_plan instead.")
  (polynomial_plan m))

(cl:ensure-generic-function 'polynomial_plan_4D-val :lambda-list '(m))
(cl:defmethod polynomial_plan_4D-val ((m <PlannerService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-srv:polynomial_plan_4D-val is deprecated.  Use mav_planning_msgs-srv:polynomial_plan_4D instead.")
  (polynomial_plan_4D m))

(cl:ensure-generic-function 'sampled_plan-val :lambda-list '(m))
(cl:defmethod sampled_plan-val ((m <PlannerService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_planning_msgs-srv:sampled_plan-val is deprecated.  Use mav_planning_msgs-srv:sampled_plan instead.")
  (sampled_plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerService-response>) ostream)
  "Serializes a message object of type '<PlannerService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polynomial_plan) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polynomial_plan_4D) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sampled_plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerService-response>) istream)
  "Deserializes a message object of type '<PlannerService-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polynomial_plan) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polynomial_plan_4D) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sampled_plan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerService-response>)))
  "Returns string type for a service object of type '<PlannerService-response>"
  "mav_planning_msgs/PlannerServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerService-response)))
  "Returns string type for a service object of type 'PlannerService-response"
  "mav_planning_msgs/PlannerServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerService-response>)))
  "Returns md5sum for a message object of type '<PlannerService-response>"
  "118771e195038ced9b4ddec299814131")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerService-response)))
  "Returns md5sum for a message object of type 'PlannerService-response"
  "118771e195038ced9b4ddec299814131")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerService-response>)))
  "Returns full string definition for message of type '<PlannerService-response>"
  (cl:format cl:nil "# True on success, false on planning failure~%bool success~%# Either contains a polynomial trajectory:~%mav_planning_msgs/PolynomialTrajectory polynomial_plan~%mav_planning_msgs/PolynomialTrajectory4D polynomial_plan_4D~%# or a MultiDOFJointTrajectory containing a sampled path (or straight-line~%# waypoints, depending on the planner).~%# Only one of these should be non-empty.~%trajectory_msgs/MultiDOFJointTrajectory sampled_plan~%~%~%================================================================================~%MSG: mav_planning_msgs/PolynomialTrajectory~%Header header~%PolynomialSegment[] segments~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mav_planning_msgs/PolynomialSegment~%Header header~%int32 num_coeffs        # order of the polynomial + 1, should match size of x[]~%duration segment_time   # duration of the segment~%float64[] x             # coefficients for the x-axis, INCREASING order~%float64[] y             # coefficients for the y-axis, INCREASING order~%float64[] z             # coefficients for the z-axis, INCREASING order~%float64[] rx            # coefficients for the rotation x-vector, INCREASING order~%float64[] ry            # coefficients for the rotation y-vector, INCREASING order~%float64[] rz            # coefficients for the rotation z-vector, INCREASING order~%## For backwards compatibility with underactuated (4DOF) commands):~%float64[] yaw           # coefficients for the yaw, INCREASING order ~%                        ~%~%================================================================================~%MSG: mav_planning_msgs/PolynomialTrajectory4D~%Header header~%PolynomialSegment4D[] segments~%~%================================================================================~%MSG: mav_planning_msgs/PolynomialSegment4D~%Header header~%int32 num_coeffs        # order of the polynomial + 1, should match size of x[]~%duration segment_time   # duration of the segment~%float64[] x             # coefficients for the x-axis, INCREASING order~%float64[] y             # coefficients for the y-axis, INCREASING order~%float64[] z             # coefficients for the z-axis, INCREASING order~%float64[] yaw           # coefficients for the yaw, INCREASING order~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectory~%# The header is used to specify the coordinate frame and the reference time for the trajectory durations~%Header header~%~%# A representation of a multi-dof joint trajectory (each point is a transformation)~%# Each point along the trajectory will include an array of positions/velocities/accelerations~%# that has the same length as the array of joint names, and has the same order of joints as ~%# the joint names array.~%~%string[] joint_names~%MultiDOFJointTrajectoryPoint[] points~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint~%# Each multi-dof joint can specify a transform (up to 6 DOF)~%geometry_msgs/Transform[] transforms~%~%# There can be a velocity specified for the origin of the joint ~%geometry_msgs/Twist[] velocities~%~%# There can be an acceleration specified for the origin of the joint ~%geometry_msgs/Twist[] accelerations~%~%duration time_from_start~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerService-response)))
  "Returns full string definition for message of type 'PlannerService-response"
  (cl:format cl:nil "# True on success, false on planning failure~%bool success~%# Either contains a polynomial trajectory:~%mav_planning_msgs/PolynomialTrajectory polynomial_plan~%mav_planning_msgs/PolynomialTrajectory4D polynomial_plan_4D~%# or a MultiDOFJointTrajectory containing a sampled path (or straight-line~%# waypoints, depending on the planner).~%# Only one of these should be non-empty.~%trajectory_msgs/MultiDOFJointTrajectory sampled_plan~%~%~%================================================================================~%MSG: mav_planning_msgs/PolynomialTrajectory~%Header header~%PolynomialSegment[] segments~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mav_planning_msgs/PolynomialSegment~%Header header~%int32 num_coeffs        # order of the polynomial + 1, should match size of x[]~%duration segment_time   # duration of the segment~%float64[] x             # coefficients for the x-axis, INCREASING order~%float64[] y             # coefficients for the y-axis, INCREASING order~%float64[] z             # coefficients for the z-axis, INCREASING order~%float64[] rx            # coefficients for the rotation x-vector, INCREASING order~%float64[] ry            # coefficients for the rotation y-vector, INCREASING order~%float64[] rz            # coefficients for the rotation z-vector, INCREASING order~%## For backwards compatibility with underactuated (4DOF) commands):~%float64[] yaw           # coefficients for the yaw, INCREASING order ~%                        ~%~%================================================================================~%MSG: mav_planning_msgs/PolynomialTrajectory4D~%Header header~%PolynomialSegment4D[] segments~%~%================================================================================~%MSG: mav_planning_msgs/PolynomialSegment4D~%Header header~%int32 num_coeffs        # order of the polynomial + 1, should match size of x[]~%duration segment_time   # duration of the segment~%float64[] x             # coefficients for the x-axis, INCREASING order~%float64[] y             # coefficients for the y-axis, INCREASING order~%float64[] z             # coefficients for the z-axis, INCREASING order~%float64[] yaw           # coefficients for the yaw, INCREASING order~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectory~%# The header is used to specify the coordinate frame and the reference time for the trajectory durations~%Header header~%~%# A representation of a multi-dof joint trajectory (each point is a transformation)~%# Each point along the trajectory will include an array of positions/velocities/accelerations~%# that has the same length as the array of joint names, and has the same order of joints as ~%# the joint names array.~%~%string[] joint_names~%MultiDOFJointTrajectoryPoint[] points~%~%================================================================================~%MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint~%# Each multi-dof joint can specify a transform (up to 6 DOF)~%geometry_msgs/Transform[] transforms~%~%# There can be a velocity specified for the origin of the joint ~%geometry_msgs/Twist[] velocities~%~%# There can be an acceleration specified for the origin of the joint ~%geometry_msgs/Twist[] accelerations~%~%duration time_from_start~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerService-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polynomial_plan))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polynomial_plan_4D))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sampled_plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerService-response
    (cl:cons ':success (success msg))
    (cl:cons ':polynomial_plan (polynomial_plan msg))
    (cl:cons ':polynomial_plan_4D (polynomial_plan_4D msg))
    (cl:cons ':sampled_plan (sampled_plan msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlannerService)))
  'PlannerService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlannerService)))
  'PlannerService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerService)))
  "Returns string type for a service object of type '<PlannerService>"
  "mav_planning_msgs/PlannerService")