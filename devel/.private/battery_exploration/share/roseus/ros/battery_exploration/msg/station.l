;; Auto-generated. Do not edit!


(when (boundp 'battery_exploration::station)
  (if (not (find-package "BATTERY_EXPLORATION"))
    (make-package "BATTERY_EXPLORATION"))
  (shadow 'station (find-package "BATTERY_EXPLORATION")))
(unless (find-package "BATTERY_EXPLORATION::STATION")
  (make-package "BATTERY_EXPLORATION::STATION"))

(in-package "ROS")
;;//! \htmlinclude station.msg.html


(defclass battery_exploration::station
  :super ros::object
  :slots (_x _y _distance ))

(defmethod battery_exploration::station
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _distance (float __distance))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get battery_exploration::station :md5sum-) "93f64830a0bd3ec5a701e4284e4574a1")
(setf (get battery_exploration::station :datatype-) "battery_exploration/station")
(setf (get battery_exploration::station :definition-)
      "float32 x
float32 y
float32 distance
")



(provide :battery_exploration/station "93f64830a0bd3ec5a701e4284e4574a1")


