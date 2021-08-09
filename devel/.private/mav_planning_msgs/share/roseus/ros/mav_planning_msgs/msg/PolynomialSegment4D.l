;; Auto-generated. Do not edit!


(when (boundp 'mav_planning_msgs::PolynomialSegment4D)
  (if (not (find-package "MAV_PLANNING_MSGS"))
    (make-package "MAV_PLANNING_MSGS"))
  (shadow 'PolynomialSegment4D (find-package "MAV_PLANNING_MSGS")))
(unless (find-package "MAV_PLANNING_MSGS::POLYNOMIALSEGMENT4D")
  (make-package "MAV_PLANNING_MSGS::POLYNOMIALSEGMENT4D"))

(in-package "ROS")
;;//! \htmlinclude PolynomialSegment4D.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mav_planning_msgs::PolynomialSegment4D
  :super ros::object
  :slots (_header _num_coeffs _segment_time _x _y _z _yaw ))

(defmethod mav_planning_msgs::PolynomialSegment4D
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:num_coeffs __num_coeffs) 0)
    ((:segment_time __segment_time) (instance ros::time :init))
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:z __z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:yaw __yaw) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _num_coeffs (round __num_coeffs))
   (setq _segment_time __segment_time)
   (setq _x __x)
   (setq _y __y)
   (setq _z __z)
   (setq _yaw __yaw)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:num_coeffs
   (&optional __num_coeffs)
   (if __num_coeffs (setq _num_coeffs __num_coeffs)) _num_coeffs)
  (:segment_time
   (&optional __segment_time)
   (if __segment_time (setq _segment_time __segment_time)) _segment_time)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _num_coeffs
    4
    ;; duration _segment_time
    8
    ;; float64[] _x
    (* 8    (length _x)) 4
    ;; float64[] _y
    (* 8    (length _y)) 4
    ;; float64[] _z
    (* 8    (length _z)) 4
    ;; float64[] _yaw
    (* 8    (length _yaw)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _num_coeffs
       (write-long _num_coeffs s)
     ;; duration _segment_time
       (write-long (send _segment_time :sec) s) (write-long (send _segment_time :nsec) s)
     ;; float64[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _z
     (write-long (length _z) s)
     (dotimes (i (length _z))
       (sys::poke (elt _z i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _yaw
     (write-long (length _yaw) s)
     (dotimes (i (length _yaw))
       (sys::poke (elt _yaw i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _num_coeffs
     (setq _num_coeffs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _segment_time
     (send _segment_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _segment_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _z i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _yaw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _yaw (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _yaw i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get mav_planning_msgs::PolynomialSegment4D :md5sum-) "c85fa40c94ff35d242df13d4d3a57809")
(setf (get mav_planning_msgs::PolynomialSegment4D :datatype-) "mav_planning_msgs/PolynomialSegment4D")
(setf (get mav_planning_msgs::PolynomialSegment4D :definition-)
      "Header header
int32 num_coeffs        # order of the polynomial + 1, should match size of x[]
duration segment_time   # duration of the segment
float64[] x             # coefficients for the x-axis, INCREASING order
float64[] y             # coefficients for the y-axis, INCREASING order
float64[] z             # coefficients for the z-axis, INCREASING order
float64[] yaw           # coefficients for the yaw, INCREASING order

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

")



(provide :mav_planning_msgs/PolynomialSegment4D "c85fa40c94ff35d242df13d4d3a57809")


