
(cl:in-package :asdf)

(defsystem "mav_system_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CpuInfo" :depends-on ("_package_CpuInfo"))
    (:file "_package_CpuInfo" :depends-on ("_package"))
    (:file "ProcessInfo" :depends-on ("_package_ProcessInfo"))
    (:file "_package_ProcessInfo" :depends-on ("_package"))
  ))