// Auto-generated. Do not edit!

// (in-package mav_planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Polygon2D = require('./Polygon2D.js');

//-----------------------------------------------------------

class PolygonWithHoles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hull = null;
      this.holes = null;
    }
    else {
      if (initObj.hasOwnProperty('hull')) {
        this.hull = initObj.hull
      }
      else {
        this.hull = new Polygon2D();
      }
      if (initObj.hasOwnProperty('holes')) {
        this.holes = initObj.holes
      }
      else {
        this.holes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PolygonWithHoles
    // Serialize message field [hull]
    bufferOffset = Polygon2D.serialize(obj.hull, buffer, bufferOffset);
    // Serialize message field [holes]
    // Serialize the length for message field [holes]
    bufferOffset = _serializer.uint32(obj.holes.length, buffer, bufferOffset);
    obj.holes.forEach((val) => {
      bufferOffset = Polygon2D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PolygonWithHoles
    let len;
    let data = new PolygonWithHoles(null);
    // Deserialize message field [hull]
    data.hull = Polygon2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [holes]
    // Deserialize array length for message field [holes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.holes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.holes[i] = Polygon2D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Polygon2D.getMessageSize(object.hull);
    object.holes.forEach((val) => {
      length += Polygon2D.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mav_planning_msgs/PolygonWithHoles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df7f266352dfcf3e4d29156dd85febf9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PolygonWithHoles(null);
    if (msg.hull !== undefined) {
      resolved.hull = Polygon2D.Resolve(msg.hull)
    }
    else {
      resolved.hull = new Polygon2D()
    }

    if (msg.holes !== undefined) {
      resolved.holes = new Array(msg.holes.length);
      for (let i = 0; i < resolved.holes.length; ++i) {
        resolved.holes[i] = Polygon2D.Resolve(msg.holes[i]);
      }
    }
    else {
      resolved.holes = []
    }

    return resolved;
    }
};

module.exports = PolygonWithHoles;
