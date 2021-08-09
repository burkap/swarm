;; Auto-generated. Do not edit!


(when (boundp 'mav_state_machine_msgs::RunTaskService)
  (if (not (find-package "MAV_STATE_MACHINE_MSGS"))
    (make-package "MAV_STATE_MACHINE_MSGS"))
  (shadow 'RunTaskService (find-package "MAV_STATE_MACHINE_MSGS")))
(unless (find-package "MAV_STATE_MACHINE_MSGS::RUNTASKSERVICE")
  (make-package "MAV_STATE_MACHINE_MSGS::RUNTASKSERVICE"))
(unless (find-package "MAV_STATE_MACHINE_MSGS::RUNTASKSERVICEREQUEST")
  (make-package "MAV_STATE_MACHINE_MSGS::RUNTASKSERVICEREQUEST"))
(unless (find-package "MAV_STATE_MACHINE_MSGS::RUNTASKSERVICERESPONSE")
  (make-package "MAV_STATE_MACHINE_MSGS::RUNTASKSERVICERESPONSE"))

(in-package "ROS")





(defclass mav_state_machine_msgs::RunTaskServiceRequest
  :super ros::object
  :slots (_task_name _start ))

(defmethod mav_state_machine_msgs::RunTaskServiceRequest
  (:init
   (&key
    ((:task_name __task_name) "")
    ((:start __start) nil)
    )
   (send-super :init)
   (setq _task_name (string __task_name))
   (setq _start __start)
   self)
  (:task_name
   (&optional __task_name)
   (if __task_name (setq _task_name __task_name)) _task_name)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:serialization-length
   ()
   (+
    ;; string _task_name
    4 (length _task_name)
    ;; bool _start
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _task_name
       (write-long (length _task_name) s) (princ _task_name s)
     ;; bool _start
       (if _start (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _task_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _start
     (setq _start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mav_state_machine_msgs::RunTaskServiceResponse
  :super ros::object
  :slots (_success ))

(defmethod mav_state_machine_msgs::RunTaskServiceResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mav_state_machine_msgs::RunTaskService
  :super ros::object
  :slots ())

(setf (get mav_state_machine_msgs::RunTaskService :md5sum-) "9747b4394bb34892a142eb2e3c96cd29")
(setf (get mav_state_machine_msgs::RunTaskService :datatype-) "mav_state_machine_msgs/RunTaskService")
(setf (get mav_state_machine_msgs::RunTaskService :request) mav_state_machine_msgs::RunTaskServiceRequest)
(setf (get mav_state_machine_msgs::RunTaskService :response) mav_state_machine_msgs::RunTaskServiceResponse)

(defmethod mav_state_machine_msgs::RunTaskServiceRequest
  (:response () (instance mav_state_machine_msgs::RunTaskServiceResponse :init)))

(setf (get mav_state_machine_msgs::RunTaskServiceRequest :md5sum-) "9747b4394bb34892a142eb2e3c96cd29")
(setf (get mav_state_machine_msgs::RunTaskServiceRequest :datatype-) "mav_state_machine_msgs/RunTaskServiceRequest")
(setf (get mav_state_machine_msgs::RunTaskServiceRequest :definition-)
      "#request fields
# Name of task 
string task_name
# True to start task, False to stop/abort
bool start
---
# True on success, false on failure to start task
bool success

")

(setf (get mav_state_machine_msgs::RunTaskServiceResponse :md5sum-) "9747b4394bb34892a142eb2e3c96cd29")
(setf (get mav_state_machine_msgs::RunTaskServiceResponse :datatype-) "mav_state_machine_msgs/RunTaskServiceResponse")
(setf (get mav_state_machine_msgs::RunTaskServiceResponse :definition-)
      "#request fields
# Name of task 
string task_name
# True to start task, False to stop/abort
bool start
---
# True on success, false on failure to start task
bool success

")



(provide :mav_state_machine_msgs/RunTaskService "9747b4394bb34892a142eb2e3c96cd29")


