
(cl:in-package :asdf)

(defsystem "mav_state_machine_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "StartStopTask" :depends-on ("_package_StartStopTask"))
    (:file "_package_StartStopTask" :depends-on ("_package"))
  ))