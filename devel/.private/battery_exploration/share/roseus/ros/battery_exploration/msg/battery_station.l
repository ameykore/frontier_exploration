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
  :slots (_x _y _z _orientation_x _orientation_y _orientation_z _orientation_w _distance ))

(defmethod battery_exploration::battery_station
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:orientation_x __orientation_x) 0.0)
    ((:orientation_y __orientation_y) 0.0)
    ((:orientation_z __orientation_z) 0.0)
    ((:orientation_w __orientation_w) 0.0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _orientation_x (float __orientation_x))
   (setq _orientation_y (float __orientation_y))
   (setq _orientation_z (float __orientation_z))
   (setq _orientation_w (float __orientation_w))
   (setq _distance (float __distance))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:orientation_x
   (&optional __orientation_x)
   (if __orientation_x (setq _orientation_x __orientation_x)) _orientation_x)
  (:orientation_y
   (&optional __orientation_y)
   (if __orientation_y (setq _orientation_y __orientation_y)) _orientation_y)
  (:orientation_z
   (&optional __orientation_z)
   (if __orientation_z (setq _orientation_z __orientation_z)) _orientation_z)
  (:orientation_w
   (&optional __orientation_w)
   (if __orientation_w (setq _orientation_w __orientation_w)) _orientation_w)
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
    ;; float32 _z
    4
    ;; float32 _orientation_x
    4
    ;; float32 _orientation_y
    4
    ;; float32 _orientation_z
    4
    ;; float32 _orientation_w
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
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _orientation_x
       (sys::poke _orientation_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _orientation_y
       (sys::poke _orientation_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _orientation_z
       (sys::poke _orientation_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _orientation_w
       (sys::poke _orientation_w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _orientation_x
     (setq _orientation_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _orientation_y
     (setq _orientation_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _orientation_z
     (setq _orientation_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _orientation_w
     (setq _orientation_w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get battery_exploration::battery_station :md5sum-) "66744cc284356957a3941b5cf863c900")
(setf (get battery_exploration::battery_station :datatype-) "battery_exploration/battery_station")
(setf (get battery_exploration::battery_station :definition-)
      "float32 x
float32 y
float32 z
float32 orientation_x
float32 orientation_y
float32 orientation_z
float32 orientation_w
float32 distance

")



(provide :battery_exploration/battery_station "66744cc284356957a3941b5cf863c900")


