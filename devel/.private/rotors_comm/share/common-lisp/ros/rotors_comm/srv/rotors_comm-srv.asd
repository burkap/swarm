
(cl:in-package :asdf)

(defsystem "rotors_comm-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :octomap_msgs-msg
)
  :components ((:file "_package")
    (:file "Octomap" :depends-on ("_package_Octomap"))
    (:file "_package_Octomap" :depends-on ("_package"))
    (:file "RecordRosbag" :depends-on ("_package_RecordRosbag"))
    (:file "_package_RecordRosbag" :depends-on ("_package"))
  ))