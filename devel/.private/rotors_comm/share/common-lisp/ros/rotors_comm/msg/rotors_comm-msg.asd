
(cl:in-package :asdf)

(defsystem "rotors_comm-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "WindSpeed" :depends-on ("_package_WindSpeed"))
    (:file "_package_WindSpeed" :depends-on ("_package"))
  ))