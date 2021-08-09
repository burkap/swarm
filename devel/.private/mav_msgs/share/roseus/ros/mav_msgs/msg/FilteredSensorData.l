;; Auto-generated. Do not edit!


(when (boundp 'mav_msgs::FilteredSensorData)
  (if (not (find-package "MAV_MSGS"))
    (make-package "MAV_MSGS"))
  (shadow 'FilteredSensorData (find-package "MAV_MSGS")))
(unless (find-package "MAV_MSGS::FILTEREDSENSORDATA")
  (make-package "MAV_MSGS::FILTEREDSENSORDATA"))

(in-package "ROS")
;;//! \htmlinclude FilteredSensorData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mav_msgs::FilteredSensorData
  :super ros::object
  :slots (_header _accelerometer _gyroscope _magnetometer _barometer ))

(defmethod mav_msgs::FilteredSensorData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:accelerometer __accelerometer) (instance geometry_msgs::Vector3 :init))
    ((:gyroscope __gyroscope) (instance geometry_msgs::Vector3 :init))
    ((:magnetometer __magnetometer) (instance geometry_msgs::Vector3 :init))
    ((:barometer __barometer) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _accelerometer __accelerometer)
   (setq _gyroscope __gyroscope)
   (setq _magnetometer __magnetometer)
   (setq _barometer (float __barometer))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:accelerometer
   (&rest __accelerometer)
   (if (keywordp (car __accelerometer))
       (send* _accelerometer __accelerometer)
     (progn
       (if __accelerometer (setq _accelerometer (car __accelerometer)))
       _accelerometer)))
  (:gyroscope
   (&rest __gyroscope)
   (if (keywordp (car __gyroscope))
       (send* _gyroscope __gyroscope)
     (progn
       (if __gyroscope (setq _gyroscope (car __gyroscope)))
       _gyroscope)))
  (:magnetometer
   (&rest __magnetometer)
   (if (keywordp (car __magnetometer))
       (send* _magnetometer __magnetometer)
     (progn
       (if __magnetometer (setq _magnetometer (car __magnetometer)))
       _magnetometer)))
  (:barometer
   (&optional __barometer)
   (if __barometer (setq _barometer __barometer)) _barometer)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _accelerometer
    (send _accelerometer :serialization-length)
    ;; geometry_msgs/Vector3 _gyroscope
    (send _gyroscope :serialization-length)
    ;; geometry_msgs/Vector3 _magnetometer
    (send _magnetometer :serialization-length)
    ;; float64 _barometer
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _accelerometer
       (send _accelerometer :serialize s)
     ;; geometry_msgs/Vector3 _gyroscope
       (send _gyroscope :serialize s)
     ;; geometry_msgs/Vector3 _magnetometer
       (send _magnetometer :serialize s)
     ;; float64 _barometer
       (sys::poke _barometer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _accelerometer
     (send _accelerometer :deserialize buf ptr-) (incf ptr- (send _accelerometer :serialization-length))
   ;; geometry_msgs/Vector3 _gyroscope
     (send _gyroscope :deserialize buf ptr-) (incf ptr- (send _gyroscope :serialization-length))
   ;; geometry_msgs/Vector3 _magnetometer
     (send _magnetometer :deserialize buf ptr-) (incf ptr- (send _magnetometer :serialization-length))
   ;; float64 _barometer
     (setq _barometer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mav_msgs::FilteredSensorData :md5sum-) "a9b51fae1f4ed3a8a0522b4ffe61659f")
(setf (get mav_msgs::FilteredSensorData :datatype-) "mav_msgs/FilteredSensorData")
(setf (get mav_msgs::FilteredSensorData :definition-)
      "Header header

geometry_msgs/Vector3 accelerometer	# acceleration in vehicle frame [m/s^2]
geometry_msgs/Vector3 gyroscope     # rotational velocity in vehicle frame [rad/s]
geometry_msgs/Vector3 magnetometer  # Magnetometer measurements in vehicle frame [uT]
float64 barometer                   # Height from barometer relative to start-up point [m]

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
")



(provide :mav_msgs/FilteredSensorData "a9b51fae1f4ed3a8a0522b4ffe61659f")


