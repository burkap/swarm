; Auto-generated. Do not edit!


(cl:in-package burka_pkg-srv)


;//! \htmlinclude ChangeFormation-request.msg.html

(cl:defclass <ChangeFormation-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass ChangeFormation-request (<ChangeFormation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeFormation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeFormation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name burka_pkg-srv:<ChangeFormation-request> is deprecated: use burka_pkg-srv:ChangeFormation-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ChangeFormation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader burka_pkg-srv:id-val is deprecated.  Use burka_pkg-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeFormation-request>) ostream)
  "Serializes a message object of type '<ChangeFormation-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeFormation-request>) istream)
  "Deserializes a message object of type '<ChangeFormation-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeFormation-request>)))
  "Returns string type for a service object of type '<ChangeFormation-request>"
  "burka_pkg/ChangeFormationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeFormation-request)))
  "Returns string type for a service object of type 'ChangeFormation-request"
  "burka_pkg/ChangeFormationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeFormation-request>)))
  "Returns md5sum for a message object of type '<ChangeFormation-request>"
  "c580c6feba3d09b058407057f8a3cef6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeFormation-request)))
  "Returns md5sum for a message object of type 'ChangeFormation-request"
  "c580c6feba3d09b058407057f8a3cef6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeFormation-request>)))
  "Returns full string definition for message of type '<ChangeFormation-request>"
  (cl:format cl:nil "int64 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeFormation-request)))
  "Returns full string definition for message of type 'ChangeFormation-request"
  (cl:format cl:nil "int64 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeFormation-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeFormation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeFormation-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude ChangeFormation-response.msg.html

(cl:defclass <ChangeFormation-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0))
)

(cl:defclass ChangeFormation-response (<ChangeFormation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeFormation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeFormation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name burka_pkg-srv:<ChangeFormation-response> is deprecated: use burka_pkg-srv:ChangeFormation-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <ChangeFormation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader burka_pkg-srv:res-val is deprecated.  Use burka_pkg-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeFormation-response>) ostream)
  "Serializes a message object of type '<ChangeFormation-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeFormation-response>) istream)
  "Deserializes a message object of type '<ChangeFormation-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeFormation-response>)))
  "Returns string type for a service object of type '<ChangeFormation-response>"
  "burka_pkg/ChangeFormationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeFormation-response)))
  "Returns string type for a service object of type 'ChangeFormation-response"
  "burka_pkg/ChangeFormationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeFormation-response>)))
  "Returns md5sum for a message object of type '<ChangeFormation-response>"
  "c580c6feba3d09b058407057f8a3cef6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeFormation-response)))
  "Returns md5sum for a message object of type 'ChangeFormation-response"
  "c580c6feba3d09b058407057f8a3cef6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeFormation-response>)))
  "Returns full string definition for message of type '<ChangeFormation-response>"
  (cl:format cl:nil "int64 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeFormation-response)))
  "Returns full string definition for message of type 'ChangeFormation-response"
  (cl:format cl:nil "int64 res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeFormation-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeFormation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeFormation-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeFormation)))
  'ChangeFormation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeFormation)))
  'ChangeFormation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeFormation)))
  "Returns string type for a service object of type '<ChangeFormation>"
  "burka_pkg/ChangeFormation")