;; Auto-generated. Do not edit!


(when (boundp 'mav_msgs::AttitudeThrust)
  (if (not (find-package "MAV_MSGS"))
    (make-package "MAV_MSGS"))
  (shadow 'AttitudeThrust (find-package "MAV_MSGS")))
(unless (find-package "MAV_MSGS::ATTITUDETHRUST")
  (make-package "MAV_MSGS::ATTITUDETHRUST"))

(in-package "ROS")
;;//! \htmlinclude AttitudeThrust.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mav_msgs::AttitudeThrust
  :super ros::object
  :slots (_header _attitude _thrust ))

(defmethod mav_msgs::AttitudeThrust
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:attitude __attitude) (instance geometry_msgs::Quaternion :init))
    ((:thrust __thrust) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _attitude __attitude)
   (setq _thrust __thrust)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:attitude
   (&rest __attitude)
   (if (keywordp (car __attitude))
       (send* _attitude __attitude)
     (progn
       (if __attitude (setq _attitude (car __attitude)))
       _attitude)))
  (:thrust
   (&rest __thrust)
   (if (keywordp (car __thrust))
       (send* _thrust __thrust)
     (progn
       (if __thrust (setq _thrust (car __thrust)))
       _thrust)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Quaternion _attitude
    (send _attitude :serialization-length)
    ;; geometry_msgs/Vector3 _thrust
    (send _thrust :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Quaternion _attitude
       (send _attitude :serialize s)
     ;; geometry_msgs/Vector3 _thrust
       (send _thrust :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Quaternion _attitude
     (send _attitude :deserialize buf ptr-) (incf ptr- (send _attitude :serialization-length))
   ;; geometry_msgs/Vector3 _thrust
     (send _thrust :deserialize buf ptr-) (incf ptr- (send _thrust :serialization-length))
   ;;
   self)
  )

(setf (get mav_msgs::AttitudeThrust :md5sum-) "7cee443b02735e42bda0ad5910302718")
(setf (get mav_msgs::AttitudeThrust :datatype-) "mav_msgs/AttitudeThrust")
(setf (get mav_msgs::AttitudeThrust :definition-)
      "Header header

geometry_msgs/Quaternion attitude    # Attitude expressed in the header/frame_id frame.
geometry_msgs/Vector3 thrust         # Thrust [N] expressed in the body frame.
                                     # For a fixed-wing, usually the x-component is used.
                                     # For a multi-rotor, usually the z-component is used.
                                     # Set all un-used components to 0.

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
float64 z
")



(provide :mav_msgs/AttitudeThrust "7cee443b02735e42bda0ad5910302718")


