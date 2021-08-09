
(cl:in-package :asdf)

(defsystem "mav_state_machine_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RunTaskService" :depends-on ("_package_RunTaskService"))
    (:file "_package_RunTaskService" :depends-on ("_package"))
  ))