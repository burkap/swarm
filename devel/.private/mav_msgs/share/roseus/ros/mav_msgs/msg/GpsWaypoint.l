;; Auto-generated. Do not edit!


(when (boundp 'mav_msgs::GpsWaypoint)
  (if (not (find-package "MAV_MSGS"))
    (make-package "MAV_MSGS"))
  (shadow 'GpsWaypoint (find-package "MAV_MSGS")))
(unless (find-package "MAV_MSGS::GPSWAYPOINT")
  (make-package "MAV_MSGS::GPSWAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude GpsWaypoint.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mav_msgs::GpsWaypoint
  :super ros::object
  :slots (_header _latitude _longitude _altitude _heading _maxSpeed _maxAcc ))

(defmethod mav_msgs::GpsWaypoint
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:heading __heading) 0.0)
    ((:maxSpeed __maxSpeed) 0.0)
    ((:maxAcc __maxAcc) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _heading (float __heading))
   (setq _maxSpeed (float __maxSpeed))
   (setq _maxAcc (float __maxAcc))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:maxSpeed
   (&optional __maxSpeed)
   (if __maxSpeed (setq _maxSpeed __maxSpeed)) _maxSpeed)
  (:maxAcc
   (&optional __maxAcc)
   (if __maxAcc (setq _maxAcc __maxAcc)) _maxAcc)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64 _heading
    8
    ;; float64 _maxSpeed
    8
    ;; float64 _maxAcc
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _maxSpeed
       (sys::poke _maxSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _maxAcc
       (sys::poke _maxAcc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _maxSpeed
     (setq _maxSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _maxAcc
     (setq _maxAcc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mav_msgs::GpsWaypoint :md5sum-) "61c3751c96f3b418f93879727f9a070a")
(setf (get mav_msgs::GpsWaypoint :datatype-) "mav_msgs/GpsWaypoint")
(setf (get mav_msgs::GpsWaypoint :definition-)
      "Header header

float64 latitude     # latitude in degree
float64 longitude    # longitude in degree
float64 altitude     # above start-up point
float64 heading      # GPS heading
float64 maxSpeed     # maximum approach speed
float64 maxAcc       # maximum approach accelerations

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



(provide :mav_msgs/GpsWaypoint "61c3751c96f3b418f93879727f9a070a")


