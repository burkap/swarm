// Auto-generated. Do not edit!

// (in-package mav_system_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ProcessInfo = require('./ProcessInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CpuInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cpu_percent = null;
      this.heaviest_processes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cpu_percent')) {
        this.cpu_percent = initObj.cpu_percent
      }
      else {
        this.cpu_percent = [];
      }
      if (initObj.hasOwnProperty('heaviest_processes')) {
        this.heaviest_processes = initObj.heaviest_processes
      }
      else {
        this.heaviest_processes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CpuInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cpu_percent]
    bufferOffset = _arraySerializer.float32(obj.cpu_percent, buffer, bufferOffset, null);
    // Serialize message field [heaviest_processes]
    // Serialize the length for message field [heaviest_processes]
    bufferOffset = _serializer.uint32(obj.heaviest_processes.length, buffer, bufferOffset);
    obj.heaviest_processes.forEach((val) => {
      bufferOffset = ProcessInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CpuInfo
    let len;
    let data = new CpuInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cpu_percent]
    data.cpu_percent = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [heaviest_processes]
    // Deserialize array length for message field [heaviest_processes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.heaviest_processes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.heaviest_processes[i] = ProcessInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.cpu_percent.length;
    object.heaviest_processes.forEach((val) => {
      length += ProcessInfo.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mav_system_msgs/CpuInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd955ed6c182adaafbfa41e78710954d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Miscellaneous information about CPU status.
    # Written by Marco Tranzatto (see: https://github.com/ethz-asl/mav_eurathlon/blob/master/mav_eurathlon_msgs/msg/CpuInfo.msg)
    
    Header header
    
    float32[] cpu_percent               # Current system-wide CPU utilization as a percentage, per CPU.
    ProcessInfo[] heaviest_processes    # Info about heaviest running processes.
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
    MSG: mav_system_msgs/ProcessInfo
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
    const resolved = new CpuInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cpu_percent !== undefined) {
      resolved.cpu_percent = msg.cpu_percent;
    }
    else {
      resolved.cpu_percent = []
    }

    if (msg.heaviest_processes !== undefined) {
      resolved.heaviest_processes = new Array(msg.heaviest_processes.length);
      for (let i = 0; i < resolved.heaviest_processes.length; ++i) {
        resolved.heaviest_processes[i] = ProcessInfo.Resolve(msg.heaviest_processes[i]);
      }
    }
    else {
      resolved.heaviest_processes = []
    }

    return resolved;
    }
};

module.exports = CpuInfo;
