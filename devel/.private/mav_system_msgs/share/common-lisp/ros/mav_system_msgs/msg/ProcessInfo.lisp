; Auto-generated. Do not edit!


(cl:in-package mav_system_msgs-msg)


;//! \htmlinclude ProcessInfo.msg.html

(cl:defclass <ProcessInfo> (roslisp-msg-protocol:ros-message)
  ((pid
    :reader pid
    :initarg :pid
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (username
    :reader username
    :initarg :username
    :type cl:string
    :initform "")
   (cpu_percent
    :reader cpu_percent
    :initarg :cpu_percent
    :type cl:float
    :initform 0.0))
)

(cl:defclass ProcessInfo (<ProcessInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcessInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcessInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_system_msgs-msg:<ProcessInfo> is deprecated: use mav_system_msgs-msg:ProcessInfo instead.")))

(cl:ensure-generic-function 'pid-val :lambda-list '(m))
(cl:defmethod pid-val ((m <ProcessInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_system_msgs-msg:pid-val is deprecated.  Use mav_system_msgs-msg:pid instead.")
  (pid m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ProcessInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_system_msgs-msg:name-val is deprecated.  Use mav_system_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'username-val :lambda-list '(m))
(cl:defmethod username-val ((m <ProcessInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_system_msgs-msg:username-val is deprecated.  Use mav_system_msgs-msg:username instead.")
  (username m))

(cl:ensure-generic-function 'cpu_percent-val :lambda-list '(m))
(cl:defmethod cpu_percent-val ((m <ProcessInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_system_msgs-msg:cpu_percent-val is deprecated.  Use mav_system_msgs-msg:cpu_percent instead.")
  (cpu_percent m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcessInfo>) ostream)
  "Serializes a message object of type '<ProcessInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pid)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'username))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'username))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cpu_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcessInfo>) istream)
  "Deserializes a message object of type '<ProcessInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pid)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'username) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'username) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpu_percent) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcessInfo>)))
  "Returns string type for a message object of type '<ProcessInfo>"
  "mav_system_msgs/ProcessInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessInfo)))
  "Returns string type for a message object of type 'ProcessInfo"
  "mav_system_msgs/ProcessInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcessInfo>)))
  "Returns md5sum for a message object of type '<ProcessInfo>"
  "e230da576ecad86012b88749ce2ed125")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcessInfo)))
  "Returns md5sum for a message object of type 'ProcessInfo"
  "e230da576ecad86012b88749ce2ed125")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcessInfo>)))
  "Returns full string definition for message of type '<ProcessInfo>"
  (cl:format cl:nil "# Miscellaneous information about process status.~%# Written by Marco Tranzatto (see: https://github.com/ethz-asl/mav_eurathlon/blob/master/mav_eurathlon_msgs/msg/ProcessInfo.msg)~%~%uint32 pid              # Process PID~%string name             # Process name~%string username         # Name of the user that owns the process~%float32 cpu_percent     # Process CPU utilization as a percentage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcessInfo)))
  "Returns full string definition for message of type 'ProcessInfo"
  (cl:format cl:nil "# Miscellaneous information about process status.~%# Written by Marco Tranzatto (see: https://github.com/ethz-asl/mav_eurathlon/blob/master/mav_eurathlon_msgs/msg/ProcessInfo.msg)~%~%uint32 pid              # Process PID~%string name             # Process name~%string username         # Name of the user that owns the process~%float32 cpu_percent     # Process CPU utilization as a percentage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcessInfo>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'username))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcessInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcessInfo
    (cl:cons ':pid (pid msg))
    (cl:cons ':name (name msg))
    (cl:cons ':username (username msg))
    (cl:cons ':cpu_percent (cpu_percent msg))
))
