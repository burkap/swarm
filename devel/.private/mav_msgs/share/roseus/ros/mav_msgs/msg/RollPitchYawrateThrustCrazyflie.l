;; Auto-generated. Do not edit!


(when (boundp 'mav_msgs::RollPitchYawrateThrustCrazyflie)
  (if (not (find-package "MAV_MSGS"))
    (make-package "MAV_MSGS"))
  (shadow 'RollPitchYawrateThrustCrazyflie (find-package "MAV_MSGS")))
(unless (find-package "MAV_MSGS::ROLLPITCHYAWRATETHRUSTCRAZYFLIE")
  (make-package "MAV_MSGS::ROLLPITCHYAWRATETHRUSTCRAZYFLIE"))

(in-package "ROS")
;;//! \htmlinclude RollPitchYawrateThrustCrazyflie.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mav_msgs::RollPitchYawrateThrustCrazyflie
  :super ros::object
  :slots (_header _roll _pitch _yaw_rate _thrust ))

(defmethod mav_msgs::RollPitchYawrateThrustCrazyflie
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:thrust __thrust) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw_rate (float __yaw_rate))
   (setq _thrust (float __thrust))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw_rate
    8
    ;; float64 _thrust
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thrust
     (setq _thrust (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mav_msgs::RollPitchYawrateThrustCrazyflie :md5sum-) "a73db4325ed09ee8583138569c01713a")
(setf (get mav_msgs::RollPitchYawrateThrustCrazyflie :datatype-) "mav_msgs/RollPitchYawrateThrustCrazyflie")
(setf (get mav_msgs::RollPitchYawrateThrustCrazyflie :definition-)
      "Header header

# We use the coordinate frames with the following convention:
#   x: forward
#   y: left
#   z: up

# rotation convention (z-y'-x''):
# yaw rotates around fixed frame's z axis
# pitch rotates around new y-axis (y')
# roll rotates around new x-axis (x'')

# This is a convenience-message to support that low-level (microcontroller-based) state
# estimators may not have knowledge about the absolute yaw.
# Roll- and pitch-angle should be specified in the header/frame_id frame
float64 roll                   # Roll angle [rad]
float64 pitch                  # Pitch angle  [rad]
float64 yaw_rate               # Yaw rate around z-axis [rad/s]

float64 thrust                 # Thrust [PWM] expressed in the body frame.
                               # For a multi-rotor, usually the z-component is used.

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



(provide :mav_msgs/RollPitchYawrateThrustCrazyflie "a73db4325ed09ee8583138569c01713a")


