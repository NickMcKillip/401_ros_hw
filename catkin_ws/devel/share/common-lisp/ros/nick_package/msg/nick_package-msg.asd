
(cl:in-package :asdf)

(defsystem "nick_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "nick_msg" :depends-on ("_package_nick_msg"))
    (:file "_package_nick_msg" :depends-on ("_package"))
  ))