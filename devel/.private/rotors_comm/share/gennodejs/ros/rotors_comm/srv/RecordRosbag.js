// Auto-generated. Do not edit!

// (in-package rotors_comm.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RecordRosbagRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.record = null;
    }
    else {
      if (initObj.hasOwnProperty('record')) {
        this.record = initObj.record
      }
      else {
        this.record = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecordRosbagRequest
    // Serialize message field [record]
    bufferOffset = _serializer.bool(obj.record, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecordRosbagRequest
    let len;
    let data = new RecordRosbagRequest(null);
    // Deserialize message field [record]
    data.record = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rotors_comm/RecordRosbagRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '396b06ea5fee4a93fc2d2be6c15809f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Whether to record the rosbag or not
    bool record
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecordRosbagRequest(null);
    if (msg.record !== undefined) {
      resolved.record = msg.record;
    }
    else {
      resolved.record = false
    }

    return resolved;
    }
};

class RecordRosbagResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecordRosbagResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecordRosbagResponse
    let len;
    let data = new RecordRosbagResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rotors_comm/RecordRosbagResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecordRosbagResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: RecordRosbagRequest,
  Response: RecordRosbagResponse,
  md5sum() { return '5504376d5b4669d33bfb29107c817d83'; },
  datatype() { return 'rotors_comm/RecordRosbag'; }
};
