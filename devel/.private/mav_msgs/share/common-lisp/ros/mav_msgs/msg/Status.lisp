; Auto-generated. Do not edit!


(cl:in-package mav_msgs-msg)


;//! \htmlinclude Status.msg.html

(cl:defclass <Status> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehicle_name
    :reader vehicle_name
    :initarg :vehicle_name
    :type cl:string
    :initform "")
   (vehicle_type
    :reader vehicle_type
    :initarg :vehicle_type
    :type cl:string
    :initform "")
   (battery_voltage
    :reader battery_voltage
    :initarg :battery_voltage
    :type cl:float
    :initform 0.0)
   (rc_command_mode
    :reader rc_command_mode
    :initarg :rc_command_mode
    :type cl:string
    :initform "")
   (command_interface_enabled
    :reader command_interface_enabled
    :initarg :command_interface_enabled
    :type cl:boolean
    :initform cl:nil)
   (flight_time
    :reader flight_time
    :initarg :flight_time
    :type cl:float
    :initform 0.0)
   (system_uptime
    :reader system_uptime
    :initarg :system_uptime
    :type cl:float
    :initform 0.0)
   (cpu_load
    :reader cpu_load
    :initarg :cpu_load
    :type cl:float
    :initform 0.0)
   (motor_status
    :reader motor_status
    :initarg :motor_status
    :type cl:string
    :initform "")
   (in_air
    :reader in_air
    :initarg :in_air
    :type cl:boolean
    :initform cl:nil)
   (gps_status
    :reader gps_status
    :initarg :gps_status
    :type cl:string
    :initform "")
   (gps_num_satellites
    :reader gps_num_satellites
    :initarg :gps_num_satellites
    :type cl:integer
    :initform 0))
)

(cl:defclass Status (<Status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_msgs-msg:<Status> is deprecated: use mav_msgs-msg:Status instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:header-val is deprecated.  Use mav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicle_name-val :lambda-list '(m))
(cl:defmethod vehicle_name-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:vehicle_name-val is deprecated.  Use mav_msgs-msg:vehicle_name instead.")
  (vehicle_name m))

(cl:ensure-generic-function 'vehicle_type-val :lambda-list '(m))
(cl:defmethod vehicle_type-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:vehicle_type-val is deprecated.  Use mav_msgs-msg:vehicle_type instead.")
  (vehicle_type m))

(cl:ensure-generic-function 'battery_voltage-val :lambda-list '(m))
(cl:defmethod battery_voltage-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:battery_voltage-val is deprecated.  Use mav_msgs-msg:battery_voltage instead.")
  (battery_voltage m))

(cl:ensure-generic-function 'rc_command_mode-val :lambda-list '(m))
(cl:defmethod rc_command_mode-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:rc_command_mode-val is deprecated.  Use mav_msgs-msg:rc_command_mode instead.")
  (rc_command_mode m))

(cl:ensure-generic-function 'command_interface_enabled-val :lambda-list '(m))
(cl:defmethod command_interface_enabled-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:command_interface_enabled-val is deprecated.  Use mav_msgs-msg:command_interface_enabled instead.")
  (command_interface_enabled m))

(cl:ensure-generic-function 'flight_time-val :lambda-list '(m))
(cl:defmethod flight_time-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:flight_time-val is deprecated.  Use mav_msgs-msg:flight_time instead.")
  (flight_time m))

(cl:ensure-generic-function 'system_uptime-val :lambda-list '(m))
(cl:defmethod system_uptime-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:system_uptime-val is deprecated.  Use mav_msgs-msg:system_uptime instead.")
  (system_uptime m))

(cl:ensure-generic-function 'cpu_load-val :lambda-list '(m))
(cl:defmethod cpu_load-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:cpu_load-val is deprecated.  Use mav_msgs-msg:cpu_load instead.")
  (cpu_load m))

(cl:ensure-generic-function 'motor_status-val :lambda-list '(m))
(cl:defmethod motor_status-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:motor_status-val is deprecated.  Use mav_msgs-msg:motor_status instead.")
  (motor_status m))

(cl:ensure-generic-function 'in_air-val :lambda-list '(m))
(cl:defmethod in_air-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:in_air-val is deprecated.  Use mav_msgs-msg:in_air instead.")
  (in_air m))

(cl:ensure-generic-function 'gps_status-val :lambda-list '(m))
(cl:defmethod gps_status-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:gps_status-val is deprecated.  Use mav_msgs-msg:gps_status instead.")
  (gps_status m))

(cl:ensure-generic-function 'gps_num_satellites-val :lambda-list '(m))
(cl:defmethod gps_num_satellites-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:gps_num_satellites-val is deprecated.  Use mav_msgs-msg:gps_num_satellites instead.")
  (gps_num_satellites m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Status>)))
    "Constants for message type '<Status>"
  '((:RC_COMMAND_ATTITUDE . "attitude_thrust")
    (:RC_COMMAND_ATTITUDE_HEIGHT . "attitude_height")
    (:RC_COMMAND_POSITION . "position")
    (:MOTOR_STATUS_RUNNING . "running")
    (:MOTOR_STATUS_STOPPED . "stopped")
    (:MOTOR_STATUS_STARTING . "starting")
    (:MOTOR_STATUS_STOPPING . "stopping")
    (:GPS_STATUS_LOCK . "lock")
    (:GPS_STATUS_NO_LOCK . "no_lock"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Status)))
    "Constants for message type 'Status"
  '((:RC_COMMAND_ATTITUDE . "attitude_thrust")
    (:RC_COMMAND_ATTITUDE_HEIGHT . "attitude_height")
    (:RC_COMMAND_POSITION . "position")
    (:MOTOR_STATUS_RUNNING . "running")
    (:MOTOR_STATUS_STOPPED . "stopped")
    (:MOTOR_STATUS_STARTING . "starting")
    (:MOTOR_STATUS_STOPPING . "stopping")
    (:GPS_STATUS_LOCK . "lock")
    (:GPS_STATUS_NO_LOCK . "no_lock"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Status>) ostream)
  "Serializes a message object of type '<Status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'vehicle_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'vehicle_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'vehicle_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'vehicle_type))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rc_command_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rc_command_mode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'command_interface_enabled) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'flight_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'system_uptime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cpu_load))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'motor_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'motor_status))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_air) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gps_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gps_status))
  (cl:let* ((signed (cl:slot-value msg 'gps_num_satellites)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Status>) istream)
  "Deserializes a message object of type '<Status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicle_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'vehicle_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicle_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'vehicle_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rc_command_mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rc_command_mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'command_interface_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'flight_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'system_uptime) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpu_load) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'motor_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'in_air) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gps_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps_num_satellites) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Status>)))
  "Returns string type for a message object of type '<Status>"
  "mav_msgs/Status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Status)))
  "Returns string type for a message object of type 'Status"
  "mav_msgs/Status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Status>)))
  "Returns md5sum for a message object of type '<Status>"
  "e191265664a5f7c1871338dc13be0958")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Status)))
  "Returns md5sum for a message object of type 'Status"
  "e191265664a5f7c1871338dc13be0958")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Status>)))
  "Returns full string definition for message of type '<Status>"
  (cl:format cl:nil "Header header~%~%# If values are not known / available, set to -1 or empty string.~%string      vehicle_name~%string      vehicle_type                  # E.g. firefly, pelican ...~%float32     battery_voltage               # Battery voltage in V.~%string      rc_command_mode               # Command mode set on the 3 position switch on the rc.~%bool        command_interface_enabled     # Reports whether the serial command interface is enabled.~%float32     flight_time                   # Flight time in s.~%float32     system_uptime									# MAV uptime in s.~%float32     cpu_load                      # MAV CPU load: 0.0 ... 1.0~%~%string      motor_status                  # Current motor status: running, stopped, starting, stopping.~%bool        in_air                        # True if vehicle is actually in air, false otherwise~%~%string      gps_status                    # GPS status: lock, no_lock~%int32       gps_num_satellites            # Number of visible satellites~%~%string RC_COMMAND_ATTITUDE=\"attitude_thrust\"~%string RC_COMMAND_ATTITUDE_HEIGHT=\"attitude_height\"~%string RC_COMMAND_POSITION=\"position\"~%~%string MOTOR_STATUS_RUNNING=\"running\"~%string MOTOR_STATUS_STOPPED=\"stopped\"~%string MOTOR_STATUS_STARTING=\"starting\"~%string MOTOR_STATUS_STOPPING=\"stopping\"~%~%string GPS_STATUS_LOCK=\"lock\"~%string GPS_STATUS_NO_LOCK=\"no_lock\"~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Status)))
  "Returns full string definition for message of type 'Status"
  (cl:format cl:nil "Header header~%~%# If values are not known / available, set to -1 or empty string.~%string      vehicle_name~%string      vehicle_type                  # E.g. firefly, pelican ...~%float32     battery_voltage               # Battery voltage in V.~%string      rc_command_mode               # Command mode set on the 3 position switch on the rc.~%bool        command_interface_enabled     # Reports whether the serial command interface is enabled.~%float32     flight_time                   # Flight time in s.~%float32     system_uptime									# MAV uptime in s.~%float32     cpu_load                      # MAV CPU load: 0.0 ... 1.0~%~%string      motor_status                  # Current motor status: running, stopped, starting, stopping.~%bool        in_air                        # True if vehicle is actually in air, false otherwise~%~%string      gps_status                    # GPS status: lock, no_lock~%int32       gps_num_satellites            # Number of visible satellites~%~%string RC_COMMAND_ATTITUDE=\"attitude_thrust\"~%string RC_COMMAND_ATTITUDE_HEIGHT=\"attitude_height\"~%string RC_COMMAND_POSITION=\"position\"~%~%string MOTOR_STATUS_RUNNING=\"running\"~%string MOTOR_STATUS_STOPPED=\"stopped\"~%string MOTOR_STATUS_STARTING=\"starting\"~%string MOTOR_STATUS_STOPPING=\"stopping\"~%~%string GPS_STATUS_LOCK=\"lock\"~%string GPS_STATUS_NO_LOCK=\"no_lock\"~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'vehicle_name))
     4 (cl:length (cl:slot-value msg 'vehicle_type))
     4
     4 (cl:length (cl:slot-value msg 'rc_command_mode))
     1
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'motor_status))
     1
     4 (cl:length (cl:slot-value msg 'gps_status))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Status>))
  "Converts a ROS message object to a list"
  (cl:list 'Status
    (cl:cons ':header (header msg))
    (cl:cons ':vehicle_name (vehicle_name msg))
    (cl:cons ':vehicle_type (vehicle_type msg))
    (cl:cons ':battery_voltage (battery_voltage msg))
    (cl:cons ':rc_command_mode (rc_command_mode msg))
    (cl:cons ':command_interface_enabled (command_interface_enabled msg))
    (cl:cons ':flight_time (flight_time msg))
    (cl:cons ':system_uptime (system_uptime msg))
    (cl:cons ':cpu_load (cpu_load msg))
    (cl:cons ':motor_status (motor_status msg))
    (cl:cons ':in_air (in_air msg))
    (cl:cons ':gps_status (gps_status msg))
    (cl:cons ':gps_num_satellites (gps_num_satellites msg))
))
