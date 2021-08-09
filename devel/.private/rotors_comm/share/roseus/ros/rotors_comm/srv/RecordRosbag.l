;; Auto-generated. Do not edit!


(when (boundp 'rotors_comm::RecordRosbag)
  (if (not (find-package "ROTORS_COMM"))
    (make-package "ROTORS_COMM"))
  (shadow 'RecordRosbag (find-package "ROTORS_COMM")))
(unless (find-package "ROTORS_COMM::RECORDROSBAG")
  (make-package "ROTORS_COMM::RECORDROSBAG"))
(unless (find-package "ROTORS_COMM::RECORDROSBAGREQUEST")
  (make-package "ROTORS_COMM::RECORDROSBAGREQUEST"))
(unless (find-package "ROTORS_COMM::RECORDROSBAGRESPONSE")
  (make-package "ROTORS_COMM::RECORDROSBAGRESPONSE"))

(in-package "ROS")





(defclass rotors_comm::RecordRosbagRequest
  :super ros::object
  :slots (_record ))

(defmethod rotors_comm::RecordRosbagRequest
  (:init
   (&key
    ((:record __record) nil)
    )
   (send-super :init)
   (setq _record __record)
   self)
  (:record
   (&optional __record)
   (if __record (setq _record __record)) _record)
  (:serialization-length
   ()
   (+
    ;; bool _record
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _record
       (if _record (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _record
     (setq _record (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rotors_comm::RecordRosbagResponse
  :super ros::object
  :slots (_success ))

(defmethod rotors_comm::RecordRosbagResponse
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

(defclass rotors_comm::RecordRosbag
  :super ros::object
  :slots ())

(setf (get rotors_comm::RecordRosbag :md5sum-) "5504376d5b4669d33bfb29107c817d83")
(setf (get rotors_comm::RecordRosbag :datatype-) "rotors_comm/RecordRosbag")
(setf (get rotors_comm::RecordRosbag :request) rotors_comm::RecordRosbagRequest)
(setf (get rotors_comm::RecordRosbag :response) rotors_comm::RecordRosbagResponse)

(defmethod rotors_comm::RecordRosbagRequest
  (:response () (instance rotors_comm::RecordRosbagResponse :init)))

(setf (get rotors_comm::RecordRosbagRequest :md5sum-) "5504376d5b4669d33bfb29107c817d83")
(setf (get rotors_comm::RecordRosbagRequest :datatype-) "rotors_comm/RecordRosbagRequest")
(setf (get rotors_comm::RecordRosbagRequest :definition-)
      "# Whether to record the rosbag or not
bool record
---
bool success

")

(setf (get rotors_comm::RecordRosbagResponse :md5sum-) "5504376d5b4669d33bfb29107c817d83")
(setf (get rotors_comm::RecordRosbagResponse :datatype-) "rotors_comm/RecordRosbagResponse")
(setf (get rotors_comm::RecordRosbagResponse :definition-)
      "# Whether to record the rosbag or not
bool record
---
bool success

")



(provide :rotors_comm/RecordRosbag "5504376d5b4669d33bfb29107c817d83")


