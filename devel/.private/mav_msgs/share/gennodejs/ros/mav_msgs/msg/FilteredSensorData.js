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

class FilteredSensorData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.accelerometer = null;
      this.gyroscope = null;
      this.magnetometer = null;
      this.barometer = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('accelerometer')) {
        this.accelerometer = initObj.accelerometer
      }
      else {
        this.accelerometer = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('gyroscope')) {
        this.gyroscope = initObj.gyroscope
      }
      else {
        this.gyroscope = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('magnetometer')) {
        this.magnetometer = initObj.magnetometer
      }
      else {
        this.magnetometer = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('barometer')) {
        this.barometer = initObj.barometer
      }
      else {
        this.barometer = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FilteredSensorData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [accelerometer]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.accelerometer, buffer, bufferOffset);
    // Serialize message field [gyroscope]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.gyroscope, buffer, bufferOffset);
    // Serialize message field [magnetometer]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.magnetometer, buffer, bufferOffset);
    // Serialize message field [barometer]
    bufferOffset = _serializer.float64(obj.barometer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FilteredSensorData
    let len;
    let data = new FilteredSensorData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [accelerometer]
    data.accelerometer = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyroscope]
    data.gyroscope = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [magnetometer]
    data.magnetometer = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [barometer]
    data.barometer = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mav_msgs/FilteredSensorData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9b51fae1f4ed3a8a0522b4ffe61659f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    geometry_msgs/Vector3 accelerometer	# acceleration in vehicle frame [m/s^2]
    geometry_msgs/Vector3 gyroscope     # rotational velocity in vehicle frame [rad/s]
    geometry_msgs/Vector3 magnetometer  # Magnetometer measurements in vehicle frame [uT]
    float64 barometer                   # Height from barometer relative to start-up point [m]
    
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
    const resolved = new FilteredSensorData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.accelerometer !== undefined) {
      resolved.accelerometer = geometry_msgs.msg.Vector3.Resolve(msg.accelerometer)
    }
    else {
      resolved.accelerometer = new geometry_msgs.msg.Vector3()
    }

    if (msg.gyroscope !== undefined) {
      resolved.gyroscope = geometry_msgs.msg.Vector3.Resolve(msg.gyroscope)
    }
    else {
      resolved.gyroscope = new geometry_msgs.msg.Vector3()
    }

    if (msg.magnetometer !== undefined) {
      resolved.magnetometer = geometry_msgs.msg.Vector3.Resolve(msg.magnetometer)
    }
    else {
      resolved.magnetometer = new geometry_msgs.msg.Vector3()
    }

    if (msg.barometer !== undefined) {
      resolved.barometer = msg.barometer;
    }
    else {
      resolved.barometer = 0.0
    }

    return resolved;
    }
};

module.exports = FilteredSensorData;
