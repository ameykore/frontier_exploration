
(cl:in-package :asdf)

(defsystem "battery_exploration-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "battery_station" :depends-on ("_package_battery_station"))
    (:file "_package_battery_station" :depends-on ("_package"))
  ))