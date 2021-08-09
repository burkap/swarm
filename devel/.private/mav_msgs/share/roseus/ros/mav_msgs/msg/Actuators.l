;; Auto-generated. Do not edit!


(when (boundp 'mav_msgs::Actuators)
  (if (not (find-package "MAV_MSGS"))
    (make-package "MAV_MSGS"))
  (shadow 'Actuators (find-package "MAV_MSGS")))
(unless (find-package "MAV_MSGS::ACTUATORS")
  (make-package "MAV_MSGS::ACTUATORS"))

(in-package "ROS")
;;//! \htmlinclude Actuators.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mav_msgs::Actuators
  :super ros::object
  :slots (_header _angles _angular_velocities _normalized ))

(defmethod mav_msgs::Actuators
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:angles __angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:angular_velocities __angular_velocities) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:normalized __normalized) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _angles __angles)
   (setq _angular_velocities __angular_velocities)
   (setq _normalized __normalized)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:angular_velocities
   (&optional __angular_velocities)
   (if __angular_velocities (setq _angular_velocities __angular_velocities)) _angular_velocities)
  (:normalized
   (&optional __normalized)
   (if __normalized (setq _normalized __normalized)) _normalized)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _angles
    (* 8    (length _angles)) 4
    ;; float64[] _angular_velocities
    (* 8    (length _angular_velocities)) 4
    ;; float64[] _normalized
    (* 8    (length _normalized)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _angles
     (write-long (length _angles) s)
     (dotimes (i (length _angles))
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _angular_velocities
     (write-long (length _angular_velocities) s)
     (dotimes (i (length _angular_velocities))
       (sys::poke (elt _angular_velocities i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _normalized
     (write-long (length _normalized) s)
     (dotimes (i (length _normalized))
       (sys::poke (elt _normalized i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _angular_velocities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angular_velocities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angular_velocities i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _normalized
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _normalized (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _normalized i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get mav_msgs::Actuators :md5sum-) "25741daf38ed25442e3a66a855ee8d9c")
(setf (get mav_msgs::Actuators :datatype-) "mav_msgs/Actuators")
(setf (get mav_msgs::Actuators :definition-)
      "Header header

# This message defines lowest level commands to be sent to the actuator(s). 

float64[] angles             # Angle of the actuator in [rad]. 
                             # E.g. servo angle of a control surface(not angle of the surface!), orientation-angle of a thruster.      
float64[] angular_velocities # Angular velocities of the actuator in [rad/s].
                             # E.g. \"rpm\" of rotors, propellers, thrusters 
float64[] normalized         # Everything that does not fit the above, normalized between [-1 ... 1].
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



(provide :mav_msgs/Actuators "25741daf38ed25442e3a66a855ee8d9c")


