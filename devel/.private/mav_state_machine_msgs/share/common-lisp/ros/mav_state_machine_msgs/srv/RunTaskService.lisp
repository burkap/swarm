; Auto-generated. Do not edit!


(cl:in-package mav_state_machine_msgs-srv)


;//! \htmlinclude RunTaskService-request.msg.html

(cl:defclass <RunTaskService-request> (roslisp-msg-protocol:ros-message)
  ((task_name
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

(cl:defclass RunTaskService-request (<RunTaskService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunTaskService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunTaskService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_state_machine_msgs-srv:<RunTaskService-request> is deprecated: use mav_state_machine_msgs-srv:RunTaskService-request instead.")))

(cl:ensure-generic-function 'task_name-val :lambda-list '(m))
(cl:defmethod task_name-val ((m <RunTaskService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_state_machine_msgs-srv:task_name-val is deprecated.  Use mav_state_machine_msgs-srv:task_name instead.")
  (task_name m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <RunTaskService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_state_machine_msgs-srv:start-val is deprecated.  Use mav_state_machine_msgs-srv:start instead.")
  (start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunTaskService-request>) ostream)
  "Serializes a message object of type '<RunTaskService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunTaskService-request>) istream)
  "Deserializes a message object of type '<RunTaskService-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunTaskService-request>)))
  "Returns string type for a service object of type '<RunTaskService-request>"
  "mav_state_machine_msgs/RunTaskServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunTaskService-request)))
  "Returns string type for a service object of type 'RunTaskService-request"
  "mav_state_machine_msgs/RunTaskServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunTaskService-request>)))
  "Returns md5sum for a message object of type '<RunTaskService-request>"
  "9747b4394bb34892a142eb2e3c96cd29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunTaskService-request)))
  "Returns md5sum for a message object of type 'RunTaskService-request"
  "9747b4394bb34892a142eb2e3c96cd29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunTaskService-request>)))
  "Returns full string definition for message of type '<RunTaskService-request>"
  (cl:format cl:nil "#request fields~%# Name of task ~%string task_name~%# True to start task, False to stop/abort~%bool start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunTaskService-request)))
  "Returns full string definition for message of type 'RunTaskService-request"
  (cl:format cl:nil "#request fields~%# Name of task ~%string task_name~%# True to start task, False to stop/abort~%bool start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunTaskService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'task_name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunTaskService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RunTaskService-request
    (cl:cons ':task_name (task_name msg))
    (cl:cons ':start (start msg))
))
;//! \htmlinclude RunTaskService-response.msg.html

(cl:defclass <RunTaskService-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RunTaskService-response (<RunTaskService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunTaskService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunTaskService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_state_machine_msgs-srv:<RunTaskService-response> is deprecated: use mav_state_machine_msgs-srv:RunTaskService-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RunTaskService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_state_machine_msgs-srv:success-val is deprecated.  Use mav_state_machine_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunTaskService-response>) ostream)
  "Serializes a message object of type '<RunTaskService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunTaskService-response>) istream)
  "Deserializes a message object of type '<RunTaskService-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunTaskService-response>)))
  "Returns string type for a service object of type '<RunTaskService-response>"
  "mav_state_machine_msgs/RunTaskServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunTaskService-response)))
  "Returns string type for a service object of type 'RunTaskService-response"
  "mav_state_machine_msgs/RunTaskServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunTaskService-response>)))
  "Returns md5sum for a message object of type '<RunTaskService-response>"
  "9747b4394bb34892a142eb2e3c96cd29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunTaskService-response)))
  "Returns md5sum for a message object of type 'RunTaskService-response"
  "9747b4394bb34892a142eb2e3c96cd29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunTaskService-response>)))
  "Returns full string definition for message of type '<RunTaskService-response>"
  (cl:format cl:nil "# True on success, false on failure to start task~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunTaskService-response)))
  "Returns full string definition for message of type 'RunTaskService-response"
  (cl:format cl:nil "# True on success, false on failure to start task~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunTaskService-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunTaskService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RunTaskService-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RunTaskService)))
  'RunTaskService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RunTaskService)))
  'RunTaskService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunTaskService)))
  "Returns string type for a service object of type '<RunTaskService>"
  "mav_state_machine_msgs/RunTaskService")