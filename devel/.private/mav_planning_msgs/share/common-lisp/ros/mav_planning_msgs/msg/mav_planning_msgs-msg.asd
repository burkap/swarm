
(cl:in-package :asdf)

(defsystem "mav_planning_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Point2D" :depends-on ("_package_Point2D"))
    (:file "_package_Point2D" :depends-on ("_package"))
    (:file "PointCloudWithPose" :depends-on ("_package_PointCloudWithPose"))
    (:file "_package_PointCloudWithPose" :depends-on ("_package"))
    (:file "Polygon2D" :depends-on ("_package_Polygon2D"))
    (:file "_package_Polygon2D" :depends-on ("_package"))
    (:file "PolygonWithHoles" :depends-on ("_package_PolygonWithHoles"))
    (:file "_package_PolygonWithHoles" :depends-on ("_package"))
    (:file "PolygonWithHolesStamped" :depends-on ("_package_PolygonWithHolesStamped"))
    (:file "_package_PolygonWithHolesStamped" :depends-on ("_package"))
    (:file "PolynomialSegment" :depends-on ("_package_PolynomialSegment"))
    (:file "_package_PolynomialSegment" :depends-on ("_package"))
    (:file "PolynomialSegment4D" :depends-on ("_package_PolynomialSegment4D"))
    (:file "_package_PolynomialSegment4D" :depends-on ("_package"))
    (:file "PolynomialTrajectory" :depends-on ("_package_PolynomialTrajectory"))
    (:file "_package_PolynomialTrajectory" :depends-on ("_package"))
    (:file "PolynomialTrajectory4D" :depends-on ("_package_PolynomialTrajectory4D"))
    (:file "_package_PolynomialTrajectory4D" :depends-on ("_package"))
  ))