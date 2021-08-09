// Auto-generated. Do not edit!

// (in-package mav_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RateThrust {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.angular_rates = null;
      this.thrust = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('angular_rates')) {
        this.angular_rates = initObj.angular_rates
      }
      else {
        this.angular_rates = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('thrust')) {
        this.thrust = initObj.thrust
      }
      else {
        this.thrust = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RateThrust
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [angular_rates]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular_rates, buffer, bufferOffset);
    // Serialize message field [thrust]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.thrust, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RateThrust
    let len;
    let data = new RateThrust(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_rates]
    data.angular_rates = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [thrust]
    data.thrust = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mav_msgs/RateThrust';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '119c5bf883bef42350d52ce5a7927c7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # We use the coordinate frames with the following convention:
    #   x: forward
    #   y: left
    #   z: up
    
    geometry_msgs/Vector3 angular_rates  # Roll-, pitch-, yaw-rate around body axes [rad/s]
    geometry_msgs/Vector3 thrust         # Thrust [N] expressed in the body frame.
                                         # For a fixed-wing, usually the x-component is used.
                                         # For a multi-rotor, usually the z-component is used.
                                         # Set all un-used components to 0.
    
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
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RateThrust(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.angular_rates !== undefined) {
      resolved.angular_rates = geometry_msgs.msg.Vector3.Resolve(msg.angular_rates)
    }
    else {
      resolved.angular_rates = new geometry_msgs.msg.Vector3()
    }

    if (msg.thrust !== undefined) {
      resolved.thrust = geometry_msgs.msg.Vector3.Resolve(msg.thrust)
    }
    else {
      resolved.thrust = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = RateThrust;
