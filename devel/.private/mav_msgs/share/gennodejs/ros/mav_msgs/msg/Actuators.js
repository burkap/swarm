// Auto-generated. Do not edit!

// (in-package mav_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Actuators {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.angles = null;
      this.angular_velocities = null;
      this.normalized = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('angles')) {
        this.angles = initObj.angles
      }
      else {
        this.angles = [];
      }
      if (initObj.hasOwnProperty('angular_velocities')) {
        this.angular_velocities = initObj.angular_velocities
      }
      else {
        this.angular_velocities = [];
      }
      if (initObj.hasOwnProperty('normalized')) {
        this.normalized = initObj.normalized
      }
      else {
        this.normalized = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Actuators
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [angles]
    bufferOffset = _arraySerializer.float64(obj.angles, buffer, bufferOffset, null);
    // Serialize message field [angular_velocities]
    bufferOffset = _arraySerializer.float64(obj.angular_velocities, buffer, bufferOffset, null);
    // Serialize message field [normalized]
    bufferOffset = _arraySerializer.float64(obj.normalized, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Actuators
    let len;
    let data = new Actuators(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [angles]
    data.angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [angular_velocities]
    data.angular_velocities = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [normalized]
    data.normalized = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.angles.length;
    length += 8 * object.angular_velocities.length;
    length += 8 * object.normalized.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mav_msgs/Actuators';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25741daf38ed25442e3a66a855ee8d9c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # This message defines lowest level commands to be sent to the actuator(s). 
    
    float64[] angles             # Angle of the actuator in [rad]. 
                                 # E.g. servo angle of a control surface(not angle of the surface!), orientation-angle of a thruster.      
    float64[] angular_velocities # Angular velocities of the actuator in [rad/s].
                                 # E.g. "rpm" of rotors, propellers, thrusters 
    float64[] normalized         # Everything that does not fit the above, normalized between [-1 ... 1].
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Actuators(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.angles !== undefined) {
      resolved.angles = msg.angles;
    }
    else {
      resolved.angles = []
    }

    if (msg.angular_velocities !== undefined) {
      resolved.angular_velocities = msg.angular_velocities;
    }
    else {
      resolved.angular_velocities = []
    }

    if (msg.normalized !== undefined) {
      resolved.normalized = msg.normalized;
    }
    else {
      resolved.normalized = []
    }

    return resolved;
    }
};

module.exports = Actuators;
