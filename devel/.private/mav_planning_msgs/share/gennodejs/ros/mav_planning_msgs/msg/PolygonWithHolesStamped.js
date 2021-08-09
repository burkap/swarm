// Auto-generated. Do not edit!

// (in-package mav_planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PolygonWithHoles = require('./PolygonWithHoles.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PolygonWithHolesStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.altitude = null;
      this.polygon = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('polygon')) {
        this.polygon = initObj.polygon
      }
      else {
        this.polygon = new PolygonWithHoles();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PolygonWithHolesStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [polygon]
    bufferOffset = PolygonWithHoles.serialize(obj.polygon, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PolygonWithHolesStamped
    let len;
    let data = new PolygonWithHolesStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [polygon]
    data.polygon = PolygonWithHoles.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PolygonWithHoles.getMessageSize(object.polygon);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mav_planning_msgs/PolygonWithHolesStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75e2ac63509c016edab7c5a5ed67059b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A message to define a 2D polygon with holes, stamp, and altitude above ground.
    Header header
    float64 altitude
    mav_planning_msgs/PolygonWithHoles polygon
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: mav_planning_msgs/PolygonWithHoles
    # A message to define a 2D polygon with holes.
    mav_planning_msgs/Polygon2D hull
    mav_planning_msgs/Polygon2D[] holes
    
    ================================================================================
    MSG: mav_planning_msgs/Polygon2D
    # A specification of a 2D polygon where the first and last points are assumed to be connected.
    mav_planning_msgs/Point2D[] points
    
    ================================================================================
    MSG: mav_planning_msgs/Point2D
    # This contains the position of a 2D point.
    float64 x
    float64 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PolygonWithHolesStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.polygon !== undefined) {
      resolved.polygon = PolygonWithHoles.Resolve(msg.polygon)
    }
    else {
      resolved.polygon = new PolygonWithHoles()
    }

    return resolved;
    }
};

module.exports = PolygonWithHolesStamped;
