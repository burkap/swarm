;; Auto-generated. Do not edit!


(when (boundp 'mav_planning_msgs::PolygonService)
  (if (not (find-package "MAV_PLANNING_MSGS"))
    (make-package "MAV_PLANNING_MSGS"))
  (shadow 'PolygonService (find-package "MAV_PLANNING_MSGS")))
(unless (find-package "MAV_PLANNING_MSGS::POLYGONSERVICE")
  (make-package "MAV_PLANNING_MSGS::POLYGONSERVICE"))
(unless (find-package "MAV_PLANNING_MSGS::POLYGONSERVICEREQUEST")
  (make-package "MAV_PLANNING_MSGS::POLYGONSERVICEREQUEST"))
(unless (find-package "MAV_PLANNING_MSGS::POLYGONSERVICERESPONSE")
  (make-package "MAV_PLANNING_MSGS::POLYGONSERVICERESPONSE"))

(in-package "ROS")





(defclass mav_planning_msgs::PolygonServiceRequest
  :super ros::object
  :slots (_polygon ))

(defmethod mav_planning_msgs::PolygonServiceRequest
  (:init
   (&key
    ((:polygon __polygon) (instance mav_planning_msgs::PolygonWithHolesStamped :init))
    )
   (send-super :init)
   (setq _polygon __polygon)
   self)
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
    ;; mav_planning_msgs/PolygonWithHolesStamped _polygon
    (send _polygon :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mav_planning_msgs/PolygonWithHolesStamped _polygon
       (send _polygon :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mav_planning_msgs/PolygonWithHolesStamped _polygon
     (send _polygon :deserialize buf ptr-) (incf ptr- (send _polygon :serialization-length))
   ;;
   self)
  )

(defclass mav_planning_msgs::PolygonServiceResponse
  :super ros::object
  :slots (_success ))

(defmethod mav_planning_msgs::PolygonServiceResponse
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

(defclass mav_planning_msgs::PolygonService
  :super ros::object
  :slots ())

(setf (get mav_planning_msgs::PolygonService :md5sum-) "7e5305932db903eed4a95dd3377ac6bc")
(setf (get mav_planning_msgs::PolygonService :datatype-) "mav_planning_msgs/PolygonService")
(setf (get mav_planning_msgs::PolygonService :request) mav_planning_msgs::PolygonServiceRequest)
(setf (get mav_planning_msgs::PolygonService :response) mav_planning_msgs::PolygonServiceResponse)

(defmethod mav_planning_msgs::PolygonServiceRequest
  (:response () (instance mav_planning_msgs::PolygonServiceResponse :init)))

(setf (get mav_planning_msgs::PolygonServiceRequest :md5sum-) "7e5305932db903eed4a95dd3377ac6bc")
(setf (get mav_planning_msgs::PolygonServiceRequest :datatype-) "mav_planning_msgs/PolygonServiceRequest")
(setf (get mav_planning_msgs::PolygonServiceRequest :definition-)
      "# A service to set a new polygon with holes.
# Request fields:
mav_planning_msgs/PolygonWithHolesStamped polygon # The new polygon.

================================================================================
MSG: mav_planning_msgs/PolygonWithHolesStamped
# A message to define a 2D polygon with holes, stamp, and altitude above ground.
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
---
# Response fields:
bool success # True on success, false on polygon error.

")

(setf (get mav_planning_msgs::PolygonServiceResponse :md5sum-) "7e5305932db903eed4a95dd3377ac6bc")
(setf (get mav_planning_msgs::PolygonServiceResponse :datatype-) "mav_planning_msgs/PolygonServiceResponse")
(setf (get mav_planning_msgs::PolygonServiceResponse :definition-)
      "# A service to set a new polygon with holes.
# Request fields:
mav_planning_msgs/PolygonWithHolesStamped polygon # The new polygon.

================================================================================
MSG: mav_planning_msgs/PolygonWithHolesStamped
# A message to define a 2D polygon with holes, stamp, and altitude above ground.
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
---
# Response fields:
bool success # True on success, false on polygon error.

")



(provide :mav_planning_msgs/PolygonService "7e5305932db903eed4a95dd3377ac6bc")


