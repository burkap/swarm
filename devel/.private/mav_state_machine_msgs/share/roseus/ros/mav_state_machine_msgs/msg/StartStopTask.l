;; Auto-generated. Do not edit!


(when (boundp 'mav_state_machine_msgs::StartStopTask)
  (if (not (find-package "MAV_STATE_MACHINE_MSGS"))
    (make-package "MAV_STATE_MACHINE_MSGS"))
  (shadow 'StartStopTask (find-package "MAV_STATE_MACHINE_MSGS")))
(unless (find-package "MAV_STATE_MACHINE_MSGS::STARTSTOPTASK")
  (make-package "MAV_STATE_MACHINE_MSGS::STARTSTOPTASK"))

(in-package "ROS")
;;//! \htmlinclude StartStopTask.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mav_state_machine_msgs::StartStopTask
  :super ros::object
  :slots (_header _task_name _start ))

(defmethod mav_state_machine_msgs::StartStopTask
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:task_name __task_name) "")
    ((:start __start) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _task_name (string __task_name))
   (setq _start __start)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:task_name
   (&optional __task_name)
   (if __task_name (setq _task_name __task_name)) _task_name)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _task_name
    4 (length _task_name)
    ;; bool _start
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _task_name
       (write-long (length _task_name) s) (princ _task_name s)
     ;; bool _start
       (if _start (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _task_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _start
     (setq _start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mav_state_machine_msgs::StartStopTask :md5sum-) "10cd1c89cea1d199a1d9752c42bc712c")
(setf (get mav_state_machine_msgs::StartStopTask :datatype-) "mav_state_machine_msgs/StartStopTask")
(setf (get mav_state_machine_msgs::StartStopTask :definition-)
      "Header header

string task_name
bool start
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



(provide :mav_state_machine_msgs/StartStopTask "10cd1c89cea1d199a1d9752c42bc712c")


