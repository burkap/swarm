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

class Status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vehicle_name = null;
      this.vehicle_type = null;
      this.battery_voltage = null;
      this.rc_command_mode = null;
      this.command_interface_enabled = null;
      this.flight_time = null;
      this.system_uptime = null;
      this.cpu_load = null;
      this.motor_status = null;
      this.in_air = null;
      this.gps_status = null;
      this.gps_num_satellites = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vehicle_name')) {
        this.vehicle_name = initObj.vehicle_name
      }
      else {
        this.vehicle_name = '';
      }
      if (initObj.hasOwnProperty('vehicle_type')) {
        this.vehicle_type = initObj.vehicle_type
      }
      else {
        this.vehicle_type = '';
      }
      if (initObj.hasOwnProperty('battery_voltage')) {
        this.battery_voltage = initObj.battery_voltage
      }
      else {
        this.battery_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('rc_command_mode')) {
        this.rc_command_mode = initObj.rc_command_mode
      }
      else {
        this.rc_command_mode = '';
      }
      if (initObj.hasOwnProperty('command_interface_enabled')) {
        this.command_interface_enabled = initObj.command_interface_enabled
      }
      else {
        this.command_interface_enabled = false;
      }
      if (initObj.hasOwnProperty('flight_time')) {
        this.flight_time = initObj.flight_time
      }
      else {
        this.flight_time = 0.0;
      }
      if (initObj.hasOwnProperty('system_uptime')) {
        this.system_uptime = initObj.system_uptime
      }
      else {
        this.system_uptime = 0.0;
      }
      if (initObj.hasOwnProperty('cpu_load')) {
        this.cpu_load = initObj.cpu_load
      }
      else {
        this.cpu_load = 0.0;
      }
      if (initObj.hasOwnProperty('motor_status')) {
        this.motor_status = initObj.motor_status
      }
      else {
        this.motor_status = '';
      }
      if (initObj.hasOwnProperty('in_air')) {
        this.in_air = initObj.in_air
      }
      else {
        this.in_air = false;
      }
      if (initObj.hasOwnProperty('gps_status')) {
        this.gps_status = initObj.gps_status
      }
      else {
        this.gps_status = '';
      }
      if (initObj.hasOwnProperty('gps_num_satellites')) {
        this.gps_num_satellites = initObj.gps_num_satellites
      }
      else {
        this.gps_num_satellites = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Status
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vehicle_name]
    bufferOffset = _serializer.string(obj.vehicle_name, buffer, bufferOffset);
    // Serialize message field [vehicle_type]
    bufferOffset = _serializer.string(obj.vehicle_type, buffer, bufferOffset);
    // Serialize message field [battery_voltage]
    bufferOffset = _serializer.float32(obj.battery_voltage, buffer, bufferOffset);
    // Serialize message field [rc_command_mode]
    bufferOffset = _serializer.string(obj.rc_command_mode, buffer, bufferOffset);
    // Serialize message field [command_interface_enabled]
    bufferOffset = _serializer.bool(obj.command_interface_enabled, buffer, bufferOffset);
    // Serialize message field [flight_time]
    bufferOffset = _serializer.float32(obj.flight_time, buffer, bufferOffset);
    // Serialize message field [system_uptime]
    bufferOffset = _serializer.float32(obj.system_uptime, buffer, bufferOffset);
    // Serialize message field [cpu_load]
    bufferOffset = _serializer.float32(obj.cpu_load, buffer, bufferOffset);
    // Serialize message field [motor_status]
    bufferOffset = _serializer.string(obj.motor_status, buffer, bufferOffset);
    // Serialize message field [in_air]
    bufferOffset = _serializer.bool(obj.in_air, buffer, bufferOffset);
    // Serialize message field [gps_status]
    bufferOffset = _serializer.string(obj.gps_status, buffer, bufferOffset);
    // Serialize message field [gps_num_satellites]
    bufferOffset = _serializer.int32(obj.gps_num_satellites, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Status
    let len;
    let data = new Status(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_name]
    data.vehicle_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [vehicle_type]
    data.vehicle_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [battery_voltage]
    data.battery_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rc_command_mode]
    data.rc_command_mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [command_interface_enabled]
    data.command_interface_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [flight_time]
    data.flight_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [system_uptime]
    data.system_uptime = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cpu_load]
    data.cpu_load = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motor_status]
    data.motor_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [in_air]
    data.in_air = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps_status]
    data.gps_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gps_num_satellites]
    data.gps_num_satellites = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.vehicle_name.length;
    length += object.vehicle_type.length;
    length += object.rc_command_mode.length;
    length += object.motor_status.length;
    length += object.gps_status.length;
    return length + 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mav_msgs/Status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e191265664a5f7c1871338dc13be0958';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # If values are not known / available, set to -1 or empty string.
    string      vehicle_name
    string      vehicle_type                  # E.g. firefly, pelican ...
    float32     battery_voltage               # Battery voltage in V.
    string      rc_command_mode               # Command mode set on the 3 position switch on the rc.
    bool        command_interface_enabled     # Reports whether the serial command interface is enabled.
    float32     flight_time                   # Flight time in s.
    float32     system_uptime									# MAV uptime in s.
    float32     cpu_load                      # MAV CPU load: 0.0 ... 1.0
    
    string      motor_status                  # Current motor status: running, stopped, starting, stopping.
    bool        in_air                        # True if vehicle is actually in air, false otherwise
    
    string      gps_status                    # GPS status: lock, no_lock
    int32       gps_num_satellites            # Number of visible satellites
    
    string RC_COMMAND_ATTITUDE="attitude_thrust"
    string RC_COMMAND_ATTITUDE_HEIGHT="attitude_height"
    string RC_COMMAND_POSITION="position"
    
    string MOTOR_STATUS_RUNNING="running"
    string MOTOR_STATUS_STOPPED="stopped"
    string MOTOR_STATUS_STARTING="starting"
    string MOTOR_STATUS_STOPPING="stopping"
    
    string GPS_STATUS_LOCK="lock"
    string GPS_STATUS_NO_LOCK="no_lock"
    
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
    const resolved = new Status(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vehicle_name !== undefined) {
      resolved.vehicle_name = msg.vehicle_name;
    }
    else {
      resolved.vehicle_name = ''
    }

    if (msg.vehicle_type !== undefined) {
      resolved.vehicle_type = msg.vehicle_type;
    }
    else {
      resolved.vehicle_type = ''
    }

    if (msg.battery_voltage !== undefined) {
      resolved.battery_voltage = msg.battery_voltage;
    }
    else {
      resolved.battery_voltage = 0.0
    }

    if (msg.rc_command_mode !== undefined) {
      resolved.rc_command_mode = msg.rc_command_mode;
    }
    else {
      resolved.rc_command_mode = ''
    }

    if (msg.command_interface_enabled !== undefined) {
      resolved.command_interface_enabled = msg.command_interface_enabled;
    }
    else {
      resolved.command_interface_enabled = false
    }

    if (msg.flight_time !== undefined) {
      resolved.flight_time = msg.flight_time;
    }
    else {
      resolved.flight_time = 0.0
    }

    if (msg.system_uptime !== undefined) {
      resolved.system_uptime = msg.system_uptime;
    }
    else {
      resolved.system_uptime = 0.0
    }

    if (msg.cpu_load !== undefined) {
      resolved.cpu_load = msg.cpu_load;
    }
    else {
      resolved.cpu_load = 0.0
    }

    if (msg.motor_status !== undefined) {
      resolved.motor_status = msg.motor_status;
    }
    else {
      resolved.motor_status = ''
    }

    if (msg.in_air !== undefined) {
      resolved.in_air = msg.in_air;
    }
    else {
      resolved.in_air = false
    }

    if (msg.gps_status !== undefined) {
      resolved.gps_status = msg.gps_status;
    }
    else {
      resolved.gps_status = ''
    }

    if (msg.gps_num_satellites !== undefined) {
      resolved.gps_num_satellites = msg.gps_num_satellites;
    }
    else {
      resolved.gps_num_satellites = 0
    }

    return resolved;
    }
};

// Constants for message
Status.Constants = {
  RC_COMMAND_ATTITUDE: '"attitude_thrust"',
  RC_COMMAND_ATTITUDE_HEIGHT: '"attitude_height"',
  RC_COMMAND_POSITION: '"position"',
  MOTOR_STATUS_RUNNING: '"running"',
  MOTOR_STATUS_STOPPED: '"stopped"',
  MOTOR_STATUS_STARTING: '"starting"',
  MOTOR_STATUS_STOPPING: '"stopping"',
  GPS_STATUS_LOCK: '"lock"',
  GPS_STATUS_NO_LOCK: '"no_lock"',
}

module.exports = Status;
