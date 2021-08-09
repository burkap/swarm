;; Auto-generated. Do not edit!


(when (boundp 'mav_system_msgs::CpuInfo)
  (if (not (find-package "MAV_SYSTEM_MSGS"))
    (make-package "MAV_SYSTEM_MSGS"))
  (shadow 'CpuInfo (find-package "MAV_SYSTEM_MSGS")))
(unless (find-package "MAV_SYSTEM_MSGS::CPUINFO")
  (make-package "MAV_SYSTEM_MSGS::CPUINFO"))

(in-package "ROS")
;;//! \htmlinclude CpuInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mav_system_msgs::CpuInfo
  :super ros::object
  :slots (_header _cpu_percent _heaviest_processes ))

(defmethod mav_system_msgs::CpuInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cpu_percent __cpu_percent) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:heaviest_processes __heaviest_processes) (let (r) (dotimes (i 0) (push (instance mav_system_msgs::ProcessInfo :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _cpu_percent __cpu_percent)
   (setq _heaviest_processes __heaviest_processes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cpu_percent
   (&optional __cpu_percent)
   (if __cpu_percent (setq _cpu_percent __cpu_percent)) _cpu_percent)
  (:heaviest_processes
   (&rest __heaviest_processes)
   (if (keywordp (car __heaviest_processes))
       (send* _heaviest_processes __heaviest_processes)
     (progn
       (if __heaviest_processes (setq _heaviest_processes (car __heaviest_processes)))
       _heaviest_processes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _cpu_percent
    (* 4    (length _cpu_percent)) 4
    ;; mav_system_msgs/ProcessInfo[] _heaviest_processes
    (apply #'+ (send-all _heaviest_processes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _cpu_percent
     (write-long (length _cpu_percent) s)
     (dotimes (i (length _cpu_percent))
       (sys::poke (elt _cpu_percent i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; mav_system_msgs/ProcessInfo[] _heaviest_processes
     (write-long (length _heaviest_processes) s)
     (dolist (elem _heaviest_processes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _cpu_percent
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cpu_percent (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cpu_percent i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; mav_system_msgs/ProcessInfo[] _heaviest_processes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _heaviest_processes (let (r) (dotimes (i n) (push (instance mav_system_msgs::ProcessInfo :init) r)) r))
     (dolist (elem- _heaviest_processes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mav_system_msgs::CpuInfo :md5sum-) "d955ed6c182adaafbfa41e78710954d2")
(setf (get mav_system_msgs::CpuInfo :datatype-) "mav_system_msgs/CpuInfo")
(setf (get mav_system_msgs::CpuInfo :definition-)
      "# Miscellaneous information about CPU status.
# Written by Marco Tranzatto (see: https://github.com/ethz-asl/mav_eurathlon/blob/master/mav_eurathlon_msgs/msg/CpuInfo.msg)

Header header

float32[] cpu_percent               # Current system-wide CPU utilization as a percentage, per CPU.
ProcessInfo[] heaviest_processes    # Info about heaviest running processes.
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
MSG: mav_system_msgs/ProcessInfo
# Miscellaneous information about process status.
# Written by Marco Tranzatto (see: https://github.com/ethz-asl/mav_eurathlon/blob/master/mav_eurathlon_msgs/msg/ProcessInfo.msg)

uint32 pid              # Process PID
string name             # Process name
string username         # Name of the user that owns the process
float32 cpu_percent     # Process CPU utilization as a percentage

")



(provide :mav_system_msgs/CpuInfo "d955ed6c182adaafbfa41e78710954d2")


