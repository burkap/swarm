;; Auto-generated. Do not edit!


(when (boundp 'burka_pkg::ChangeFormation)
  (if (not (find-package "BURKA_PKG"))
    (make-package "BURKA_PKG"))
  (shadow 'ChangeFormation (find-package "BURKA_PKG")))
(unless (find-package "BURKA_PKG::CHANGEFORMATION")
  (make-package "BURKA_PKG::CHANGEFORMATION"))
(unless (find-package "BURKA_PKG::CHANGEFORMATIONREQUEST")
  (make-package "BURKA_PKG::CHANGEFORMATIONREQUEST"))
(unless (find-package "BURKA_PKG::CHANGEFORMATIONRESPONSE")
  (make-package "BURKA_PKG::CHANGEFORMATIONRESPONSE"))

(in-package "ROS")





(defclass burka_pkg::ChangeFormationRequest
  :super ros::object
  :slots (_id ))

(defmethod burka_pkg::ChangeFormationRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int64 _id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _id
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass burka_pkg::ChangeFormationResponse
  :super ros::object
  :slots (_res ))

(defmethod burka_pkg::ChangeFormationResponse
  (:init
   (&key
    ((:res __res) 0)
    )
   (send-super :init)
   (setq _res (round __res))
   self)
  (:res
   (&optional __res)
   (if __res (setq _res __res)) _res)
  (:serialization-length
   ()
   (+
    ;; int64 _res
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _res
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _res (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _res) (= (length (_res . bv)) 2)) ;; bignum
              (write-long (ash (elt (_res . bv) 0) 0) s)
              (write-long (ash (elt (_res . bv) 1) -1) s))
             ((and (class _res) (= (length (_res . bv)) 1)) ;; big1
              (write-long (elt (_res . bv) 0) s)
              (write-long (if (>= _res 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _res s)(write-long (if (>= _res 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _res
#+(or :alpha :irix6 :x86_64)
      (setf _res (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _res (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass burka_pkg::ChangeFormation
  :super ros::object
  :slots ())

(setf (get burka_pkg::ChangeFormation :md5sum-) "c580c6feba3d09b058407057f8a3cef6")
(setf (get burka_pkg::ChangeFormation :datatype-) "burka_pkg/ChangeFormation")
(setf (get burka_pkg::ChangeFormation :request) burka_pkg::ChangeFormationRequest)
(setf (get burka_pkg::ChangeFormation :response) burka_pkg::ChangeFormationResponse)

(defmethod burka_pkg::ChangeFormationRequest
  (:response () (instance burka_pkg::ChangeFormationResponse :init)))

(setf (get burka_pkg::ChangeFormationRequest :md5sum-) "c580c6feba3d09b058407057f8a3cef6")
(setf (get burka_pkg::ChangeFormationRequest :datatype-) "burka_pkg/ChangeFormationRequest")
(setf (get burka_pkg::ChangeFormationRequest :definition-)
      "int64 id
---
int64 res
")

(setf (get burka_pkg::ChangeFormationResponse :md5sum-) "c580c6feba3d09b058407057f8a3cef6")
(setf (get burka_pkg::ChangeFormationResponse :datatype-) "burka_pkg/ChangeFormationResponse")
(setf (get burka_pkg::ChangeFormationResponse :definition-)
      "int64 id
---
int64 res
")



(provide :burka_pkg/ChangeFormation "c580c6feba3d09b058407057f8a3cef6")


