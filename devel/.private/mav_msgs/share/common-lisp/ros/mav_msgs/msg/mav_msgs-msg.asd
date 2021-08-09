
(cl:in-package :asdf)

(defsystem "mav_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Actuators" :depends-on ("_package_Actuators"))
    (:file "_package_Actuators" :depends-on ("_package"))
    (:file "AttitudeThrust" :depends-on ("_package_AttitudeThrust"))
    (:file "_package_AttitudeThrust" :depends-on ("_package"))
    (:file "DroneState" :depends-on ("_package_DroneState"))
    (:file "_package_DroneState" :depends-on ("_package"))
    (:file "FilteredSensorData" :depends-on ("_package_FilteredSensorData"))
    (:file "_package_FilteredSensorData" :depends-on ("_package"))
    (:file "GpsWaypoint" :depends-on ("_package_GpsWaypoint"))
    (:file "_package_GpsWaypoint" :depends-on ("_package"))
    (:file "RateThrust" :depends-on ("_package_RateThrust"))
    (:file "_package_RateThrust" :depends-on ("_package"))
    (:file "RollPitchYawrateThrust" :depends-on ("_package_RollPitchYawrateThrust"))
    (:file "_package_RollPitchYawrateThrust" :depends-on ("_package"))
    (:file "RollPitchYawrateThrustCrazyflie" :depends-on ("_package_RollPitchYawrateThrustCrazyflie"))
    (:file "_package_RollPitchYawrateThrustCrazyflie" :depends-on ("_package"))
    (:file "Status" :depends-on ("_package_Status"))
    (:file "_package_Status" :depends-on ("_package"))
    (:file "TorqueThrust" :depends-on ("_package_TorqueThrust"))
    (:file "_package_TorqueThrust" :depends-on ("_package"))
  ))