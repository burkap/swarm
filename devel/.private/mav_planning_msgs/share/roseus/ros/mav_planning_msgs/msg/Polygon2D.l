;; Auto-generated. Do not edit!


(when (boundp 'mav_planning_msgs::Polygon2D)
  (if (not (find-package "MAV_PLANNING_MSGS"))
    (make-package "MAV_PLANNING_MSGS"))
  (shadow 'Polygon2D (find-package "MAV_PLANNING_MSGS")))
(unless (find-package "MAV_PLANNING_MSGS::POLYGON2D")
  (make-package "MAV_PLANNING_MSGS::POLYGON2D"))

(in-package "ROS")
;;//! \htmlinclude Polygon2D.msg.html


(defclass mav_planning_msgs::Polygon2D
  :super ros::object
  :slots (_points ))

(defmethod mav_planning_msgs::Polygon2D
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance mav_planning_msgs::Point2D :init) r)) r))
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; mav_planning_msgs/Point2D[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mav_planning_msgs/Point2D[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mav_planning_msgs/Point2D[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance mav_planning_msgs::Point2D :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mav_planning_msgs::Polygon2D :md5sum-) "8f02263beef99aa03117a577a3eb879d")
(setf (get mav_planning_msgs::Polygon2D :datatype-) "mav_planning_msgs/Polygon2D")
(setf (get mav_planning_msgs::Polygon2D :definition-)
      "# A specification of a 2D polygon where the first and last points are assumed to be connected.
mav_planning_msgs/Point2D[] points

================================================================================
MSG: mav_planning_msgs/Point2D
# This contains the position of a 2D point.
float64 x
float64 y

")



(provide :mav_planning_msgs/Polygon2D "8f02263beef99aa03117a577a3eb879d")


