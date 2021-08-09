
(cl:in-package :asdf)

(defsystem "burka_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FormationMatrix" :depends-on ("_package_FormationMatrix"))
    (:file "_package_FormationMatrix" :depends-on ("_package"))
  ))