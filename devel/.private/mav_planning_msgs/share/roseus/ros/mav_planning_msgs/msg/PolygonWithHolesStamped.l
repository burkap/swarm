;; Auto-generated. Do not edit!


(when (boundp 'mav_planning_msgs::PolygonWithHolesStamped)
  (if (not (find-package "MAV_PLANNING_MSGS"))
    (make-package "MAV_PLANNING_MSGS"))
  (shadow 'PolygonWithHolesStamped (find-package "MAV_PLANNING_MSGS")))
(unless (find-package "MAV_PLANNING_MSGS::POLYGONWITHHOLESSTAMPED")
  (make-package "MAV_PLANNING_MSGS::POLYGONWITHHOLESSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude PolygonWithHolesStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mav_planning_msgs::PolygonWithHolesStamped
  :super ros::object
  :slots (_header _altitude _polygon ))

(defmethod mav_planning_msgs::PolygonWithHolesStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:altitude __altitude) 0.0)
    ((:polygon __polygon) (instance mav_planning_msgs::PolygonWithHoles :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _altitude (float __altitude))
   (setq _polygon __polygon)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _altitude
    8
    ;; mav_planning_msgs/PolygonWithHoles _polygon
    (send _polygon :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; mav_planning_msgs/PolygonWithHoles _polygon
       (send _polygon :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; mav_planning_msgs/PolygonWithHoles _polygon
     (send _polygon :deserialize buf ptr-) (incf ptr- (send _polygon :serialization-length))
   ;;
   self)
  )

(setf (get mav_planning_msgs::PolygonWithHolesStamped :md5sum-) "75e2ac63509c016edab7c5a5ed67059b")
(setf (get mav_planning_msgs::PolygonWithHolesStamped :datatype-) "mav_planning_msgs/PolygonWithHolesStamped")
(setf (get mav_planning_msgs::PolygonWithHolesStamped :definition-)
      "# A message to define a 2D polygon with holes, stamp, and altitude above ground.
Header header
float64 altitude
mav_planning_msgs/PolygonWithHoles polygon

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
MSG: mav_planning_msgs/PolygonWithHoles
# A message to define a 2D polygon with holes.
mav_planning_msgs/Polygon2D hull
mav_planning_msgs/Polygon2D[] holes

================================================================================
MSG: mav_planning_msgs/Polygon2D
# A specification of a 2D polygon where the first and last points are assumed to be connected.
mav_planning_msgs/Point2D[] points

================================================================================
MSG: mav_planning_msgs/Point2D
# This contains the position of a 2D point.
float64 x
float64 y

")



(provide :mav_planning_msgs/PolygonWithHolesStamped "75e2ac63509c016edab7c5a5ed67059b")


