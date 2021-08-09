;; Auto-generated. Do not edit!


(when (boundp 'mav_system_msgs::ProcessInfo)
  (if (not (find-package "MAV_SYSTEM_MSGS"))
    (make-package "MAV_SYSTEM_MSGS"))
  (shadow 'ProcessInfo (find-package "MAV_SYSTEM_MSGS")))
(unless (find-package "MAV_SYSTEM_MSGS::PROCESSINFO")
  (make-package "MAV_SYSTEM_MSGS::PROCESSINFO"))

(in-package "ROS")
;;//! \htmlinclude ProcessInfo.msg.html


(defclass mav_system_msgs::ProcessInfo
  :super ros::object
  :slots (_pid _name _username _cpu_percent ))

(defmethod mav_system_msgs::ProcessInfo
  (:init
   (&key
    ((:pid __pid) 0)
    ((:name __name) "")
    ((:username __username) "")
    ((:cpu_percent __cpu_percent) 0.0)
    )
   (send-super :init)
   (setq _pid (round __pid))
   (setq _name (string __name))
   (setq _username (string __username))
   (setq _cpu_percent (float __cpu_percent))
   self)
  (:pid
   (&optional __pid)
   (if __pid (setq _pid __pid)) _pid)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:username
   (&optional __username)
   (if __username (setq _username __username)) _username)
  (:cpu_percent
   (&optional __cpu_percent)
   (if __cpu_percent (setq _cpu_percent __cpu_percent)) _cpu_percent)
  (:serialization-length
   ()
   (+
    ;; uint32 _pid
    4
    ;; string _name
    4 (length _name)
    ;; string _username
    4 (length _username)
    ;; float32 _cpu_percent
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _pid
       (write-long _pid s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _username
       (write-long (length _username) s) (princ _username s)
     ;; float32 _cpu_percent
       (sys::poke _cpu_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _pid
     (setq _pid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _username
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _username (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _cpu_percent
     (setq _cpu_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mav_system_msgs::ProcessInfo :md5sum-) "e230da576ecad86012b88749ce2ed125")
(setf (get mav_system_msgs::ProcessInfo :datatype-) "mav_system_msgs/ProcessInfo")
(setf (get mav_system_msgs::ProcessInfo :definition-)
      "# Miscellaneous information about process status.
# Written by Marco Tranzatto (see: https://github.com/ethz-asl/mav_eurathlon/blob/master/mav_eurathlon_msgs/msg/ProcessInfo.msg)

uint32 pid              # Process PID
string name             # Process name
string username         # Name of the user that owns the process
float32 cpu_percent     # Process CPU utilization as a percentage

")



(provide :mav_system_msgs/ProcessInfo "e230da576ecad86012b88749ce2ed125")


