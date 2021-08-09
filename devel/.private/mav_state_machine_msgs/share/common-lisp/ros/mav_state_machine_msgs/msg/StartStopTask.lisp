; Auto-generated. Do not edit!


(cl:in-package mav_state_machine_msgs-msg)


;//! \htmlinclude StartStopTask.msg.html

(cl:defclass <StartStopTask> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (task_name
    :reader task_name
    :initarg :task_name
    :type cl:string
    :initform "")
   (start
    :reader start
    :initarg :start
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StartStopTask (<StartStopTask>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartStopTask>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartStopTask)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_state_machine_msgs-msg:<StartStopTask> is deprecated: use mav_state_machine_msgs-msg:StartStopTask instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StartStopTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_state_machine_msgs-msg:header-val is deprecated.  Use mav_state_machine_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'task_name-val :lambda-list '(m))
(cl:defmethod task_name-val ((m <StartStopTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_state_machine_msgs-msg:task_name-val is deprecated.  Use mav_state_machine_msgs-msg:task_name instead.")
  (task_name m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <StartStopTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_state_machine_msgs-msg:start-val is deprecated.  Use mav_state_machine_msgs-msg:start instead.")
  (start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartStopTask>) ostream)
  "Serializes a message object of type '<StartStopTask>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartStopTask>) istream)
  "Deserializes a message object of type '<StartStopTask>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'start) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartStopTask>)))
  "Returns string type for a message object of type '<StartStopTask>"
  "mav_state_machine_msgs/StartStopTask")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartStopTask)))
  "Returns string type for a message object of type 'StartStopTask"
  "mav_state_machine_msgs/StartStopTask")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartStopTask>)))
  "Returns md5sum for a message object of type '<StartStopTask>"
  "10cd1c89cea1d199a1d9752c42bc712c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartStopTask)))
  "Returns md5sum for a message object of type 'StartStopTask"
  "10cd1c89cea1d199a1d9752c42bc712c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartStopTask>)))
  "Returns full string definition for message of type '<StartStopTask>"
  (cl:format cl:nil "Header header~%~%string task_name~%bool start~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartStopTask)))
  "Returns full string definition for message of type 'StartStopTask"
  (cl:format cl:nil "Header header~%~%string task_name~%bool start~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartStopTask>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'task_name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartStopTask>))
  "Converts a ROS message object to a list"
  (cl:list 'StartStopTask
    (cl:cons ':header (header msg))
    (cl:cons ':task_name (task_name msg))
    (cl:cons ':start (start msg))
))
