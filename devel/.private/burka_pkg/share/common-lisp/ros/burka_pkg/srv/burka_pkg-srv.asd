
(cl:in-package :asdf)

(defsystem "burka_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ChangeFormation" :depends-on ("_package_ChangeFormation"))
    (:file "_package_ChangeFormation" :depends-on ("_package"))
  ))