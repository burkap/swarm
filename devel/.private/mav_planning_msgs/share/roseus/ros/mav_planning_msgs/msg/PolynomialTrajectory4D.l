;; Auto-generated. Do not edit!


(when (boundp 'mav_planning_msgs::PolynomialTrajectory4D)
  (if (not (find-package "MAV_PLANNING_MSGS"))
    (make-package "MAV_PLANNING_MSGS"))
  (shadow 'PolynomialTrajectory4D (find-package "MAV_PLANNING_MSGS")))
(unless (find-package "MAV_PLANNING_MSGS::POLYNOMIALTRAJECTORY4D")
  (make-package "MAV_PLANNING_MSGS::POLYNOMIALTRAJECTORY4D"))

(in-package "ROS")
;;//! \htmlinclude PolynomialTrajectory4D.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mav_planning_msgs::PolynomialTrajectory4D
  :super ros::object
  :slots (_header _segments ))

(defmethod mav_planning_msgs::PolynomialTrajectory4D
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:segments __segments) (let (r) (dotimes (i 0) (push (instance mav_planning_msgs::PolynomialSegment4D :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _segments __segments)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:segments
   (&rest __segments)
   (if (keywordp (car __segments))
       (send* _segments __segments)
     (progn
       (if __segments (setq _segments (car __segments)))
       _segments)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mav_planning_msgs/PolynomialSegment4D[] _segments
    (apply #'+ (send-all _segments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mav_planning_msgs/PolynomialSegment4D[] _segments
     (write-long (length _segments) s)
     (dolist (elem _segments)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mav_planning_msgs/PolynomialSegment4D[] _segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segments (let (r) (dotimes (i n) (push (instance mav_planning_msgs::PolynomialSegment4D :init) r)) r))
     (dolist (elem- _segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mav_planning_msgs::PolynomialTrajectory4D :md5sum-) "4d68d15524ede489eecd674bb6dc3ee8")
(setf (get mav_planning_msgs::PolynomialTrajectory4D :datatype-) "mav_planning_msgs/PolynomialTrajectory4D")
(setf (get mav_planning_msgs::PolynomialTrajectory4D :definition-)
      "Header header
PolynomialSegment4D[] segments

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
MSG: mav_planning_msgs/PolynomialSegment4D
Header header
int32 num_coeffs        # order of the polynomial + 1, should match size of x[]
duration segment_time   # duration of the segment
float64[] x             # coefficients for the x-axis, INCREASING order
float64[] y             # coefficients for the y-axis, INCREASING order
float64[] z             # coefficients for the z-axis, INCREASING order
float64[] yaw           # coefficients for the yaw, INCREASING order

")



(provide :mav_planning_msgs/PolynomialTrajectory4D "4d68d15524ede489eecd674bb6dc3ee8")


