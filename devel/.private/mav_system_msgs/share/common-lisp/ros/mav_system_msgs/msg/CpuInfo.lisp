; Auto-generated. Do not edit!


(cl:in-package mav_system_msgs-msg)


;//! \htmlinclude CpuInfo.msg.html

(cl:defclass <CpuInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cpu_percent
    :reader cpu_percent
    :initarg :cpu_percent
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (heaviest_processes
    :reader heaviest_processes
    :initarg :heaviest_processes
    :type (cl:vector mav_system_msgs-msg:ProcessInfo)
   :initform (cl:make-array 0 :element-type 'mav_system_msgs-msg:ProcessInfo :initial-element (cl:make-instance 'mav_system_msgs-msg:ProcessInfo))))
)

(cl:defclass CpuInfo (<CpuInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CpuInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CpuInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_system_msgs-msg:<CpuInfo> is deprecated: use mav_system_msgs-msg:CpuInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CpuInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_system_msgs-msg:header-val is deprecated.  Use mav_system_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cpu_percent-val :lambda-list '(m))
(cl:defmethod cpu_percent-val ((m <CpuInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_system_msgs-msg:cpu_percent-val is deprecated.  Use mav_system_msgs-msg:cpu_percent instead.")
  (cpu_percent m))

(cl:ensure-generic-function 'heaviest_processes-val :lambda-list '(m))
(cl:defmethod heaviest_processes-val ((m <CpuInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_system_msgs-msg:heaviest_processes-val is deprecated.  Use mav_system_msgs-msg:heaviest_processes instead.")
  (heaviest_processes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CpuInfo>) ostream)
  "Serializes a message object of type '<CpuInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cpu_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cpu_percent))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'heaviest_processes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'heaviest_processes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CpuInfo>) istream)
  "Deserializes a message object of type '<CpuInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cpu_percent) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cpu_percent)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'heaviest_processes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'heaviest_processes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mav_system_msgs-msg:ProcessInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CpuInfo>)))
  "Returns string type for a message object of type '<CpuInfo>"
  "mav_system_msgs/CpuInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CpuInfo)))
  "Returns string type for a message object of type 'CpuInfo"
  "mav_system_msgs/CpuInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CpuInfo>)))
  "Returns md5sum for a message object of type '<CpuInfo>"
  "d955ed6c182adaafbfa41e78710954d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CpuInfo)))
  "Returns md5sum for a message object of type 'CpuInfo"
  "d955ed6c182adaafbfa41e78710954d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CpuInfo>)))
  "Returns full string definition for message of type '<CpuInfo>"
  (cl:format cl:nil "# Miscellaneous information about CPU status.~%# Written by Marco Tranzatto (see: https://github.com/ethz-asl/mav_eurathlon/blob/master/mav_eurathlon_msgs/msg/CpuInfo.msg)~%~%Header header~%~%float32[] cpu_percent               # Current system-wide CPU utilization as a percentage, per CPU.~%ProcessInfo[] heaviest_processes    # Info about heaviest running processes.~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mav_system_msgs/ProcessInfo~%# Miscellaneous information about process status.~%# Written by Marco Tranzatto (see: https://github.com/ethz-asl/mav_eurathlon/blob/master/mav_eurathlon_msgs/msg/ProcessInfo.msg)~%~%uint32 pid              # Process PID~%string name             # Process name~%string username         # Name of the user that owns the process~%float32 cpu_percent     # Process CPU utilization as a percentage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CpuInfo)))
  "Returns full string definition for message of type 'CpuInfo"
  (cl:format cl:nil "# Miscellaneous information about CPU status.~%# Written by Marco Tranzatto (see: https://github.com/ethz-asl/mav_eurathlon/blob/master/mav_eurathlon_msgs/msg/CpuInfo.msg)~%~%Header header~%~%float32[] cpu_percent               # Current system-wide CPU utilization as a percentage, per CPU.~%ProcessInfo[] heaviest_processes    # Info about heaviest running processes.~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mav_system_msgs/ProcessInfo~%# Miscellaneous information about process status.~%# Written by Marco Tranzatto (see: https://github.com/ethz-asl/mav_eurathlon/blob/master/mav_eurathlon_msgs/msg/ProcessInfo.msg)~%~%uint32 pid              # Process PID~%string name             # Process name~%string username         # Name of the user that owns the process~%float32 cpu_percent     # Process CPU utilization as a percentage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CpuInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cpu_percent) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'heaviest_processes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CpuInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'CpuInfo
    (cl:cons ':header (header msg))
    (cl:cons ':cpu_percent (cpu_percent msg))
    (cl:cons ':heaviest_processes (heaviest_processes msg))
))
