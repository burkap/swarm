;; Auto-generated. Do not edit!


(when (boundp 'mav_msgs::Status)
  (if (not (find-package "MAV_MSGS"))
    (make-package "MAV_MSGS"))
  (shadow 'Status (find-package "MAV_MSGS")))
(unless (find-package "MAV_MSGS::STATUS")
  (make-package "MAV_MSGS::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*RC_COMMAND_ATTITUDE*" (find-package "MAV_MSGS::STATUS"))
(shadow '*RC_COMMAND_ATTITUDE* (find-package "MAV_MSGS::STATUS"))
(defconstant mav_msgs::Status::*RC_COMMAND_ATTITUDE* "\"attitude_thrust\"")
(intern "*RC_COMMAND_ATTITUDE_HEIGHT*" (find-package "MAV_MSGS::STATUS"))
(shadow '*RC_COMMAND_ATTITUDE_HEIGHT* (find-package "MAV_MSGS::STATUS"))
(defconstant mav_msgs::Status::*RC_COMMAND_ATTITUDE_HEIGHT* "\"attitude_height\"")
(intern "*RC_COMMAND_POSITION*" (find-package "MAV_MSGS::STATUS"))
(shadow '*RC_COMMAND_POSITION* (find-package "MAV_MSGS::STATUS"))
(defconstant mav_msgs::Status::*RC_COMMAND_POSITION* "\"position\"")
(intern "*MOTOR_STATUS_RUNNING*" (find-package "MAV_MSGS::STATUS"))
(shadow '*MOTOR_STATUS_RUNNING* (find-package "MAV_MSGS::STATUS"))
(defconstant mav_msgs::Status::*MOTOR_STATUS_RUNNING* "\"running\"")
(intern "*MOTOR_STATUS_STOPPED*" (find-package "MAV_MSGS::STATUS"))
(shadow '*MOTOR_STATUS_STOPPED* (find-package "MAV_MSGS::STATUS"))
(defconstant mav_msgs::Status::*MOTOR_STATUS_STOPPED* "\"stopped\"")
(intern "*MOTOR_STATUS_STARTING*" (find-package "MAV_MSGS::STATUS"))
(shadow '*MOTOR_STATUS_STARTING* (find-package "MAV_MSGS::STATUS"))
(defconstant mav_msgs::Status::*MOTOR_STATUS_STARTING* "\"starting\"")
(intern "*MOTOR_STATUS_STOPPING*" (find-package "MAV_MSGS::STATUS"))
(shadow '*MOTOR_STATUS_STOPPING* (find-package "MAV_MSGS::STATUS"))
(defconstant mav_msgs::Status::*MOTOR_STATUS_STOPPING* "\"stopping\"")
(intern "*GPS_STATUS_LOCK*" (find-package "MAV_MSGS::STATUS"))
(shadow '*GPS_STATUS_LOCK* (find-package "MAV_MSGS::STATUS"))
(defconstant mav_msgs::Status::*GPS_STATUS_LOCK* "\"lock\"")
(intern "*GPS_STATUS_NO_LOCK*" (find-package "MAV_MSGS::STATUS"))
(shadow '*GPS_STATUS_NO_LOCK* (find-package "MAV_MSGS::STATUS"))
(defconstant mav_msgs::Status::*GPS_STATUS_NO_LOCK* "\"no_lock\"")
(defclass mav_msgs::Status
  :super ros::object
  :slots (_header _vehicle_name _vehicle_type _battery_voltage _rc_command_mode _command_interface_enabled _flight_time _system_uptime _cpu_load _motor_status _in_air _gps_status _gps_num_satellites ))

(defmethod mav_msgs::Status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehicle_name __vehicle_name) "")
    ((:vehicle_type __vehicle_type) "")
    ((:battery_voltage __battery_voltage) 0.0)
    ((:rc_command_mode __rc_command_mode) "")
    ((:command_interface_enabled __command_interface_enabled) nil)
    ((:flight_time __flight_time) 0.0)
    ((:system_uptime __system_uptime) 0.0)
    ((:cpu_load __cpu_load) 0.0)
    ((:motor_status __motor_status) "")
    ((:in_air __in_air) nil)
    ((:gps_status __gps_status) "")
    ((:gps_num_satellites __gps_num_satellites) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _vehicle_name (string __vehicle_name))
   (setq _vehicle_type (string __vehicle_type))
   (setq _battery_voltage (float __battery_voltage))
   (setq _rc_command_mode (string __rc_command_mode))
   (setq _command_interface_enabled __command_interface_enabled)
   (setq _flight_time (float __flight_time))
   (setq _system_uptime (float __system_uptime))
   (setq _cpu_load (float __cpu_load))
   (setq _motor_status (string __motor_status))
   (setq _in_air __in_air)
   (setq _gps_status (string __gps_status))
   (setq _gps_num_satellites (round __gps_num_satellites))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vehicle_name
   (&optional __vehicle_name)
   (if __vehicle_name (setq _vehicle_name __vehicle_name)) _vehicle_name)
  (:vehicle_type
   (&optional __vehicle_type)
   (if __vehicle_type (setq _vehicle_type __vehicle_type)) _vehicle_type)
  (:battery_voltage
   (&optional __battery_voltage)
   (if __battery_voltage (setq _battery_voltage __battery_voltage)) _battery_voltage)
  (:rc_command_mode
   (&optional __rc_command_mode)
   (if __rc_command_mode (setq _rc_command_mode __rc_command_mode)) _rc_command_mode)
  (:command_interface_enabled
   (&optional __command_interface_enabled)
   (if __command_interface_enabled (setq _command_interface_enabled __command_interface_enabled)) _command_interface_enabled)
  (:flight_time
   (&optional __flight_time)
   (if __flight_time (setq _flight_time __flight_time)) _flight_time)
  (:system_uptime
   (&optional __system_uptime)
   (if __system_uptime (setq _system_uptime __system_uptime)) _system_uptime)
  (:cpu_load
   (&optional __cpu_load)
   (if __cpu_load (setq _cpu_load __cpu_load)) _cpu_load)
  (:motor_status
   (&optional __motor_status)
   (if __motor_status (setq _motor_status __motor_status)) _motor_status)
  (:in_air
   (&optional __in_air)
   (if __in_air (setq _in_air __in_air)) _in_air)
  (:gps_status
   (&optional __gps_status)
   (if __gps_status (setq _gps_status __gps_status)) _gps_status)
  (:gps_num_satellites
   (&optional __gps_num_satellites)
   (if __gps_num_satellites (setq _gps_num_satellites __gps_num_satellites)) _gps_num_satellites)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _vehicle_name
    4 (length _vehicle_name)
    ;; string _vehicle_type
    4 (length _vehicle_type)
    ;; float32 _battery_voltage
    4
    ;; string _rc_command_mode
    4 (length _rc_command_mode)
    ;; bool _command_interface_enabled
    1
    ;; float32 _flight_time
    4
    ;; float32 _system_uptime
    4
    ;; float32 _cpu_load
    4
    ;; string _motor_status
    4 (length _motor_status)
    ;; bool _in_air
    1
    ;; string _gps_status
    4 (length _gps_status)
    ;; int32 _gps_num_satellites
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _vehicle_name
       (write-long (length _vehicle_name) s) (princ _vehicle_name s)
     ;; string _vehicle_type
       (write-long (length _vehicle_type) s) (princ _vehicle_type s)
     ;; float32 _battery_voltage
       (sys::poke _battery_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _rc_command_mode
       (write-long (length _rc_command_mode) s) (princ _rc_command_mode s)
     ;; bool _command_interface_enabled
       (if _command_interface_enabled (write-byte -1 s) (write-byte 0 s))
     ;; float32 _flight_time
       (sys::poke _flight_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _system_uptime
       (sys::poke _system_uptime (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cpu_load
       (sys::poke _cpu_load (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _motor_status
       (write-long (length _motor_status) s) (princ _motor_status s)
     ;; bool _in_air
       (if _in_air (write-byte -1 s) (write-byte 0 s))
     ;; string _gps_status
       (write-long (length _gps_status) s) (princ _gps_status s)
     ;; int32 _gps_num_satellites
       (write-long _gps_num_satellites s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _vehicle_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _vehicle_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _vehicle_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _vehicle_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _battery_voltage
     (setq _battery_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _rc_command_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rc_command_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _command_interface_enabled
     (setq _command_interface_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _flight_time
     (setq _flight_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _system_uptime
     (setq _system_uptime (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cpu_load
     (setq _cpu_load (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _motor_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _motor_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _in_air
     (setq _in_air (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _gps_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gps_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _gps_num_satellites
     (setq _gps_num_satellites (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mav_msgs::Status :md5sum-) "e191265664a5f7c1871338dc13be0958")
(setf (get mav_msgs::Status :datatype-) "mav_msgs/Status")
(setf (get mav_msgs::Status :definition-)
      "Header header

# If values are not known / available, set to -1 or empty string.
string      vehicle_name
string      vehicle_type                  # E.g. firefly, pelican ...
float32     battery_voltage               # Battery voltage in V.
string      rc_command_mode               # Command mode set on the 3 position switch on the rc.
bool        command_interface_enabled     # Reports whether the serial command interface is enabled.
float32     flight_time                   # Flight time in s.
float32     system_uptime									# MAV uptime in s.
float32     cpu_load                      # MAV CPU load: 0.0 ... 1.0

string      motor_status                  # Current motor status: running, stopped, starting, stopping.
bool        in_air                        # True if vehicle is actually in air, false otherwise

string      gps_status                    # GPS status: lock, no_lock
int32       gps_num_satellites            # Number of visible satellites

string RC_COMMAND_ATTITUDE=\"attitude_thrust\"
string RC_COMMAND_ATTITUDE_HEIGHT=\"attitude_height\"
string RC_COMMAND_POSITION=\"position\"

string MOTOR_STATUS_RUNNING=\"running\"
string MOTOR_STATUS_STOPPED=\"stopped\"
string MOTOR_STATUS_STARTING=\"starting\"
string MOTOR_STATUS_STOPPING=\"stopping\"

string GPS_STATUS_LOCK=\"lock\"
string GPS_STATUS_NO_LOCK=\"no_lock\"

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



(provide :mav_msgs/Status "e191265664a5f7c1871338dc13be0958")


