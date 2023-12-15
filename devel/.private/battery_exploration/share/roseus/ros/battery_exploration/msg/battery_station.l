;; Auto-generated. Do not edit!


(when (boundp 'battery_exploration::battery_station)
  (if (not (find-package "BATTERY_EXPLORATION"))
    (make-package "BATTERY_EXPLORATION"))
  (shadow 'battery_station (find-package "BATTERY_EXPLORATION")))
(unless (find-package "BATTERY_EXPLORATION::BATTERY_STATION")
  (make-package "BATTERY_EXPLORATION::BATTERY_STATION"))

(in-package "ROS")
;;//! \htmlinclude battery_station.msg.html


(defclass battery_exploration::battery_station
  :super ros::object
  :slots (_x _y _distance _battery ))

(defmethod battery_exploration::battery_station
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:distance __distance) 0.0)
    ((:battery __battery) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _distance (float __distance))
   (setq _battery (float __battery))
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
  (:battery
   (&optional __battery)
   (if __battery (setq _battery __battery)) _battery)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _distance
    4
    ;; float32 _battery
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
     ;; float32 _battery
       (sys::poke _battery (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _battery
     (setq _battery (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get battery_exploration::battery_station :md5sum-) "eb1e3cafe78d7101d500adbbdedc5d81")
(setf (get battery_exploration::battery_station :datatype-) "battery_exploration/battery_station")
(setf (get battery_exploration::battery_station :definition-)
      "float32 x
float32 y
float32 distance
float32 battery

")



(provide :battery_exploration/battery_station "eb1e3cafe78d7101d500adbbdedc5d81")


