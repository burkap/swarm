;; Auto-generated. Do not edit!


(when (boundp 'mav_msgs::TorqueThrust)
  (if (not (find-package "MAV_MSGS"))
    (make-package "MAV_MSGS"))
  (shadow 'TorqueThrust (find-package "MAV_MSGS")))
(unless (find-package "MAV_MSGS::TORQUETHRUST")
  (make-package "MAV_MSGS::TORQUETHRUST"))

(in-package "ROS")
;;//! \htmlinclude TorqueThrust.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mav_msgs::TorqueThrust
  :super ros::object
  :slots (_header _torque _thrust ))

(defmethod mav_msgs::TorqueThrust
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:torque __torque) (instance geometry_msgs::Vector3 :init))
    ((:thrust __thrust) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _torque __torque)
   (setq _thrust __thrust)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:torque
   (&rest __torque)
   (if (keywordp (car __torque))
       (send* _torque __torque)
     (progn
       (if __torque (setq _torque (car __torque)))
       _torque)))
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
    ;; geometry_msgs/Vector3 _torque
    (send _torque :serialization-length)
    ;; geometry_msgs/Vector3 _thrust
    (send _thrust :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _torque
       (send _torque :serialize s)
     ;; geometry_msgs/Vector3 _thrust
       (send _thrust :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _torque
     (send _torque :deserialize buf ptr-) (incf ptr- (send _torque :serialization-length))
   ;; geometry_msgs/Vector3 _thrust
     (send _thrust :deserialize buf ptr-) (incf ptr- (send _thrust :serialization-length))
   ;;
   self)
  )

(setf (get mav_msgs::TorqueThrust :md5sum-) "81293743ae52683b61e39c21bc0b30db")
(setf (get mav_msgs::TorqueThrust :datatype-) "mav_msgs/TorqueThrust")
(setf (get mav_msgs::TorqueThrust :definition-)
      "Header header

# We use the coordinate frames with the following convention:
#   x: forward
#   y: left
#   z: up

geometry_msgs/Vector3 torque  # Torque expressed in the body frame [Nm].
geometry_msgs/Vector3 thrust  # Thrust [N] expressed in the body frame. 
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



(provide :mav_msgs/TorqueThrust "81293743ae52683b61e39c21bc0b30db")


