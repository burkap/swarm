// Auto-generated. Do not edit!

// (in-package mav_system_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ProcessInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pid = null;
      this.name = null;
      this.username = null;
      this.cpu_percent = null;
    }
    else {
      if (initObj.hasOwnProperty('pid')) {
        this.pid = initObj.pid
      }
      else {
        this.pid = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('username')) {
        this.username = initObj.username
      }
      else {
        this.username = '';
      }
      if (initObj.hasOwnProperty('cpu_percent')) {
        this.cpu_percent = initObj.cpu_percent
      }
      else {
        this.cpu_percent = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProcessInfo
    // Serialize message field [pid]
    bufferOffset = _serializer.uint32(obj.pid, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [username]
    bufferOffset = _serializer.string(obj.username, buffer, bufferOffset);
    // Serialize message field [cpu_percent]
    bufferOffset = _serializer.float32(obj.cpu_percent, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcessInfo
    let len;
    let data = new ProcessInfo(null);
    // Deserialize message field [pid]
    data.pid = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [username]
    data.username = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cpu_percent]
    data.cpu_percent = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.username.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mav_system_msgs/ProcessInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e230da576ecad86012b88749ce2ed125';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Miscellaneous information about process status.
    # Written by Marco Tranzatto (see: https://github.com/ethz-asl/mav_eurathlon/blob/master/mav_eurathlon_msgs/msg/ProcessInfo.msg)
    
    uint32 pid              # Process PID
    string name             # Process name
    string username         # Name of the user that owns the process
    float32 cpu_percent     # Process CPU utilization as a percentage
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProcessInfo(null);
    if (msg.pid !== undefined) {
      resolved.pid = msg.pid;
    }
    else {
      resolved.pid = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.username !== undefined) {
      resolved.username = msg.username;
    }
    else {
      resolved.username = ''
    }

    if (msg.cpu_percent !== undefined) {
      resolved.cpu_percent = msg.cpu_percent;
    }
    else {
      resolved.cpu_percent = 0.0
    }

    return resolved;
    }
};

module.exports = ProcessInfo;
