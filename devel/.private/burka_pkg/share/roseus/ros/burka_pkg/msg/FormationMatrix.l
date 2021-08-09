;; Auto-generated. Do not edit!


(when (boundp 'burka_pkg::FormationMatrix)
  (if (not (find-package "BURKA_PKG"))
    (make-package "BURKA_PKG"))
  (shadow 'FormationMatrix (find-package "BURKA_PKG")))
(unless (find-package "BURKA_PKG::FORMATIONMATRIX")
  (make-package "BURKA_PKG::FORMATIONMATRIX"))

(in-package "ROS")
;;//! \htmlinclude FormationMatrix.msg.html


(defclass burka_pkg::FormationMatrix
  :super ros::object
  :slots (_data ))

(defmethod burka_pkg::FormationMatrix
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get burka_pkg::FormationMatrix :md5sum-) "788898178a3da2c3718461eecda8f714")
(setf (get burka_pkg::FormationMatrix :datatype-) "burka_pkg/FormationMatrix")
(setf (get burka_pkg::FormationMatrix :definition-)
      "float64[] data

")



(provide :burka_pkg/FormationMatrix "788898178a3da2c3718461eecda8f714")


