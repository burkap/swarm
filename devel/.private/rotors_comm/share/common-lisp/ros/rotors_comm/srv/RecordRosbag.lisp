; Auto-generated. Do not edit!


(cl:in-package rotors_comm-srv)


;//! \htmlinclude RecordRosbag-request.msg.html

(cl:defclass <RecordRosbag-request> (roslisp-msg-protocol:ros-message)
  ((record
    :reader record
    :initarg :record
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RecordRosbag-request (<RecordRosbag-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecordRosbag-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecordRosbag-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rotors_comm-srv:<RecordRosbag-request> is deprecated: use rotors_comm-srv:RecordRosbag-request instead.")))

(cl:ensure-generic-function 'record-val :lambda-list '(m))
(cl:defmethod record-val ((m <RecordRosbag-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rotors_comm-srv:record-val is deprecated.  Use rotors_comm-srv:record instead.")
  (record m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecordRosbag-request>) ostream)
  "Serializes a message object of type '<RecordRosbag-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'record) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecordRosbag-request>) istream)
  "Deserializes a message object of type '<RecordRosbag-request>"
    (cl:setf (cl:slot-value msg 'record) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecordRosbag-request>)))
  "Returns string type for a service object of type '<RecordRosbag-request>"
  "rotors_comm/RecordRosbagRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordRosbag-request)))
  "Returns string type for a service object of type 'RecordRosbag-request"
  "rotors_comm/RecordRosbagRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecordRosbag-request>)))
  "Returns md5sum for a message object of type '<RecordRosbag-request>"
  "5504376d5b4669d33bfb29107c817d83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecordRosbag-request)))
  "Returns md5sum for a message object of type 'RecordRosbag-request"
  "5504376d5b4669d33bfb29107c817d83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecordRosbag-request>)))
  "Returns full string definition for message of type '<RecordRosbag-request>"
  (cl:format cl:nil "# Whether to record the rosbag or not~%bool record~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecordRosbag-request)))
  "Returns full string definition for message of type 'RecordRosbag-request"
  (cl:format cl:nil "# Whether to record the rosbag or not~%bool record~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecordRosbag-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecordRosbag-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RecordRosbag-request
    (cl:cons ':record (record msg))
))
;//! \htmlinclude RecordRosbag-response.msg.html

(cl:defclass <RecordRosbag-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RecordRosbag-response (<RecordRosbag-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecordRosbag-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecordRosbag-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rotors_comm-srv:<RecordRosbag-response> is deprecated: use rotors_comm-srv:RecordRosbag-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RecordRosbag-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rotors_comm-srv:success-val is deprecated.  Use rotors_comm-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecordRosbag-response>) ostream)
  "Serializes a message object of type '<RecordRosbag-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecordRosbag-response>) istream)
  "Deserializes a message object of type '<RecordRosbag-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecordRosbag-response>)))
  "Returns string type for a service object of type '<RecordRosbag-response>"
  "rotors_comm/RecordRosbagResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordRosbag-response)))
  "Returns string type for a service object of type 'RecordRosbag-response"
  "rotors_comm/RecordRosbagResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecordRosbag-response>)))
  "Returns md5sum for a message object of type '<RecordRosbag-response>"
  "5504376d5b4669d33bfb29107c817d83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecordRosbag-response)))
  "Returns md5sum for a message object of type 'RecordRosbag-response"
  "5504376d5b4669d33bfb29107c817d83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecordRosbag-response>)))
  "Returns full string definition for message of type '<RecordRosbag-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecordRosbag-response)))
  "Returns full string definition for message of type 'RecordRosbag-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecordRosbag-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecordRosbag-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RecordRosbag-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RecordRosbag)))
  'RecordRosbag-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RecordRosbag)))
  'RecordRosbag-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordRosbag)))
  "Returns string type for a service object of type '<RecordRosbag>"
  "rotors_comm/RecordRosbag")