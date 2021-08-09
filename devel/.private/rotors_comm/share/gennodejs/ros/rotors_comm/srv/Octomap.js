// Auto-generated. Do not edit!

// (in-package rotors_comm.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let octomap_msgs = _finder('octomap_msgs');

//-----------------------------------------------------------

class OctomapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bounding_box_origin = null;
      this.bounding_box_lengths = null;
      this.leaf_size = null;
      this.publish_octomap = null;
      this.filename = null;
    }
    else {
      if (initObj.hasOwnProperty('bounding_box_origin')) {
        this.bounding_box_origin = initObj.bounding_box_origin
      }
      else {
        this.bounding_box_origin = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('bounding_box_lengths')) {
        this.bounding_box_lengths = initObj.bounding_box_lengths
      }
      else {
        this.bounding_box_lengths = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('leaf_size')) {
        this.leaf_size = initObj.leaf_size
      }
      else {
        this.leaf_size = 0.0;
      }
      if (initObj.hasOwnProperty('publish_octomap')) {
        this.publish_octomap = initObj.publish_octomap
      }
      else {
        this.publish_octomap = false;
      }
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OctomapRequest
    // Serialize message field [bounding_box_origin]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.bounding_box_origin, buffer, bufferOffset);
    // Serialize message field [bounding_box_lengths]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.bounding_box_lengths, buffer, bufferOffset);
    // Serialize message field [leaf_size]
    bufferOffset = _serializer.float64(obj.leaf_size, buffer, bufferOffset);
    // Serialize message field [publish_octomap]
    bufferOffset = _serializer.bool(obj.publish_octomap, buffer, bufferOffset);
    // Serialize message field [filename]
    bufferOffset = _serializer.string(obj.filename, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OctomapRequest
    let len;
    let data = new OctomapRequest(null);
    // Deserialize message field [bounding_box_origin]
    data.bounding_box_origin = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [bounding_box_lengths]
    data.bounding_box_lengths = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [leaf_size]
    data.leaf_size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [publish_octomap]
    data.publish_octomap = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [filename]
    data.filename = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.filename.length;
    return length + 61;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rotors_comm/OctomapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75da936d054df9de7938d7041a8a6ef2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The center point of the axis-aligned bounding box in the global frame
    geometry_msgs/Point bounding_box_origin
    # The 3 side lenghts of the axis-aligned bounding box
    geometry_msgs/Point bounding_box_lengths
    # The leaf size or resolution of the octomap
    float64 leaf_size
    # Indicate if the generated octomap should be published.
    bool publish_octomap
    # The filename under which the octomap should be stored (only stored if set)
    string filename
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new OctomapRequest(null);
    if (msg.bounding_box_origin !== undefined) {
      resolved.bounding_box_origin = geometry_msgs.msg.Point.Resolve(msg.bounding_box_origin)
    }
    else {
      resolved.bounding_box_origin = new geometry_msgs.msg.Point()
    }

    if (msg.bounding_box_lengths !== undefined) {
      resolved.bounding_box_lengths = geometry_msgs.msg.Point.Resolve(msg.bounding_box_lengths)
    }
    else {
      resolved.bounding_box_lengths = new geometry_msgs.msg.Point()
    }

    if (msg.leaf_size !== undefined) {
      resolved.leaf_size = msg.leaf_size;
    }
    else {
      resolved.leaf_size = 0.0
    }

    if (msg.publish_octomap !== undefined) {
      resolved.publish_octomap = msg.publish_octomap;
    }
    else {
      resolved.publish_octomap = false
    }

    if (msg.filename !== undefined) {
      resolved.filename = msg.filename;
    }
    else {
      resolved.filename = ''
    }

    return resolved;
    }
};

class OctomapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map = null;
      this.origin_latitude = null;
      this.origin_longitude = null;
      this.origin_altitude = null;
    }
    else {
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = new octomap_msgs.msg.Octomap();
      }
      if (initObj.hasOwnProperty('origin_latitude')) {
        this.origin_latitude = initObj.origin_latitude
      }
      else {
        this.origin_latitude = 0.0;
      }
      if (initObj.hasOwnProperty('origin_longitude')) {
        this.origin_longitude = initObj.origin_longitude
      }
      else {
        this.origin_longitude = 0.0;
      }
      if (initObj.hasOwnProperty('origin_altitude')) {
        this.origin_altitude = initObj.origin_altitude
      }
      else {
        this.origin_altitude = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OctomapResponse
    // Serialize message field [map]
    bufferOffset = octomap_msgs.msg.Octomap.serialize(obj.map, buffer, bufferOffset);
    // Serialize message field [origin_latitude]
    bufferOffset = _serializer.float64(obj.origin_latitude, buffer, bufferOffset);
    // Serialize message field [origin_longitude]
    bufferOffset = _serializer.float64(obj.origin_longitude, buffer, bufferOffset);
    // Serialize message field [origin_altitude]
    bufferOffset = _serializer.float64(obj.origin_altitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OctomapResponse
    let len;
    let data = new OctomapResponse(null);
    // Deserialize message field [map]
    data.map = octomap_msgs.msg.Octomap.deserialize(buffer, bufferOffset);
    // Deserialize message field [origin_latitude]
    data.origin_latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [origin_longitude]
    data.origin_longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [origin_altitude]
    data.origin_altitude = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += octomap_msgs.msg.Octomap.getMessageSize(object.map);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rotors_comm/OctomapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '57e29816a04b311c573d5337632a1156';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The created octomap in gazebo coordinates
    octomap_msgs/Octomap map
    # The latitude of the gazebo coordinates origin [deg]
    float64 origin_latitude
    # The longitude of the gazebo coordinates origin [deg]
    float64 origin_longitude
    # The altitude of the gazebo coordinates origin [m]
    float64 origin_altitude
    
    
    ================================================================================
    MSG: octomap_msgs/Octomap
    # A 3D map in binary format, as Octree
    Header header
    
    # Flag to denote a binary (only free/occupied) or full occupancy octree (.bt/.ot file)
    bool binary
    
    # Class id of the contained octree 
    string id
    
    # Resolution (in m) of the smallest octree nodes
    float64 resolution
    
    # binary serialization of octree, use conversions.h to read and write octrees
    int8[] data
    
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
    const resolved = new OctomapResponse(null);
    if (msg.map !== undefined) {
      resolved.map = octomap_msgs.msg.Octomap.Resolve(msg.map)
    }
    else {
      resolved.map = new octomap_msgs.msg.Octomap()
    }

    if (msg.origin_latitude !== undefined) {
      resolved.origin_latitude = msg.origin_latitude;
    }
    else {
      resolved.origin_latitude = 0.0
    }

    if (msg.origin_longitude !== undefined) {
      resolved.origin_longitude = msg.origin_longitude;
    }
    else {
      resolved.origin_longitude = 0.0
    }

    if (msg.origin_altitude !== undefined) {
      resolved.origin_altitude = msg.origin_altitude;
    }
    else {
      resolved.origin_altitude = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: OctomapRequest,
  Response: OctomapResponse,
  md5sum() { return 'a0b5f40a1676bf2554580b1ee723114a'; },
  datatype() { return 'rotors_comm/Octomap'; }
};
