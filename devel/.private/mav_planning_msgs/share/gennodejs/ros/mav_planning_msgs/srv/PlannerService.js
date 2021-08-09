// Auto-generated. Do not edit!

// (in-package mav_planning_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let PolynomialTrajectory = require('../msg/PolynomialTrajectory.js');
let PolynomialTrajectory4D = require('../msg/PolynomialTrajectory4D.js');
let trajectory_msgs = _finder('trajectory_msgs');

//-----------------------------------------------------------

class PlannerServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_pose = null;
      this.start_velocity = null;
      this.goal_pose = null;
      this.goal_velocity = null;
      this.bounding_box = null;
    }
    else {
      if (initObj.hasOwnProperty('start_pose')) {
        this.start_pose = initObj.start_pose
      }
      else {
        this.start_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('start_velocity')) {
        this.start_velocity = initObj.start_velocity
      }
      else {
        this.start_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('goal_pose')) {
        this.goal_pose = initObj.goal_pose
      }
      else {
        this.goal_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('goal_velocity')) {
        this.goal_velocity = initObj.goal_velocity
      }
      else {
        this.goal_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('bounding_box')) {
        this.bounding_box = initObj.bounding_box
      }
      else {
        this.bounding_box = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlannerServiceRequest
    // Serialize message field [start_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.start_pose, buffer, bufferOffset);
    // Serialize message field [start_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.start_velocity, buffer, bufferOffset);
    // Serialize message field [goal_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.goal_pose, buffer, bufferOffset);
    // Serialize message field [goal_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.goal_velocity, buffer, bufferOffset);
    // Serialize message field [bounding_box]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.bounding_box, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlannerServiceRequest
    let len;
    let data = new PlannerServiceRequest(null);
    // Deserialize message field [start_pose]
    data.start_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [start_velocity]
    data.start_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_pose]
    data.goal_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_velocity]
    data.goal_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [bounding_box]
    data.bounding_box = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.start_pose);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.goal_pose);
    return length + 72;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mav_planning_msgs/PlannerServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6090fe8ab3df1362b8c26859b8850940';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request fields
    geometry_msgs/PoseStamped start_pose #start pose for the planner
    geometry_msgs/Vector3 start_velocity
    geometry_msgs/PoseStamped goal_pose #start pose for the planner
    geometry_msgs/Vector3 goal_velocity
    geometry_msgs/Vector3 bounding_box
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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
    const resolved = new PlannerServiceRequest(null);
    if (msg.start_pose !== undefined) {
      resolved.start_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.start_pose)
    }
    else {
      resolved.start_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.start_velocity !== undefined) {
      resolved.start_velocity = geometry_msgs.msg.Vector3.Resolve(msg.start_velocity)
    }
    else {
      resolved.start_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.goal_pose !== undefined) {
      resolved.goal_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.goal_pose)
    }
    else {
      resolved.goal_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.goal_velocity !== undefined) {
      resolved.goal_velocity = geometry_msgs.msg.Vector3.Resolve(msg.goal_velocity)
    }
    else {
      resolved.goal_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.bounding_box !== undefined) {
      resolved.bounding_box = geometry_msgs.msg.Vector3.Resolve(msg.bounding_box)
    }
    else {
      resolved.bounding_box = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

class PlannerServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.polynomial_plan = null;
      this.polynomial_plan_4D = null;
      this.sampled_plan = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('polynomial_plan')) {
        this.polynomial_plan = initObj.polynomial_plan
      }
      else {
        this.polynomial_plan = new PolynomialTrajectory();
      }
      if (initObj.hasOwnProperty('polynomial_plan_4D')) {
        this.polynomial_plan_4D = initObj.polynomial_plan_4D
      }
      else {
        this.polynomial_plan_4D = new PolynomialTrajectory4D();
      }
      if (initObj.hasOwnProperty('sampled_plan')) {
        this.sampled_plan = initObj.sampled_plan
      }
      else {
        this.sampled_plan = new trajectory_msgs.msg.MultiDOFJointTrajectory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlannerServiceResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [polynomial_plan]
    bufferOffset = PolynomialTrajectory.serialize(obj.polynomial_plan, buffer, bufferOffset);
    // Serialize message field [polynomial_plan_4D]
    bufferOffset = PolynomialTrajectory4D.serialize(obj.polynomial_plan_4D, buffer, bufferOffset);
    // Serialize message field [sampled_plan]
    bufferOffset = trajectory_msgs.msg.MultiDOFJointTrajectory.serialize(obj.sampled_plan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlannerServiceResponse
    let len;
    let data = new PlannerServiceResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [polynomial_plan]
    data.polynomial_plan = PolynomialTrajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [polynomial_plan_4D]
    data.polynomial_plan_4D = PolynomialTrajectory4D.deserialize(buffer, bufferOffset);
    // Deserialize message field [sampled_plan]
    data.sampled_plan = trajectory_msgs.msg.MultiDOFJointTrajectory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PolynomialTrajectory.getMessageSize(object.polynomial_plan);
    length += PolynomialTrajectory4D.getMessageSize(object.polynomial_plan_4D);
    length += trajectory_msgs.msg.MultiDOFJointTrajectory.getMessageSize(object.sampled_plan);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mav_planning_msgs/PlannerServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2dfc73ed0482f368aa016a76f49c8aed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # True on success, false on planning failure
    bool success
    # Either contains a polynomial trajectory:
    mav_planning_msgs/PolynomialTrajectory polynomial_plan
    mav_planning_msgs/PolynomialTrajectory4D polynomial_plan_4D
    # or a MultiDOFJointTrajectory containing a sampled path (or straight-line
    # waypoints, depending on the planner).
    # Only one of these should be non-empty.
    trajectory_msgs/MultiDOFJointTrajectory sampled_plan
    
    
    ================================================================================
    MSG: mav_planning_msgs/PolynomialTrajectory
    Header header
    PolynomialSegment[] segments
    
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
    MSG: mav_planning_msgs/PolynomialSegment
    Header header
    int32 num_coeffs        # order of the polynomial + 1, should match size of x[]
    duration segment_time   # duration of the segment
    float64[] x             # coefficients for the x-axis, INCREASING order
    float64[] y             # coefficients for the y-axis, INCREASING order
    float64[] z             # coefficients for the z-axis, INCREASING order
    float64[] rx            # coefficients for the rotation x-vector, INCREASING order
    float64[] ry            # coefficients for the rotation y-vector, INCREASING order
    float64[] rz            # coefficients for the rotation z-vector, INCREASING order
    ## For backwards compatibility with underactuated (4DOF) commands):
    float64[] yaw           # coefficients for the yaw, INCREASING order 
                            
    
    ================================================================================
    MSG: mav_planning_msgs/PolynomialTrajectory4D
    Header header
    PolynomialSegment4D[] segments
    
    ================================================================================
    MSG: mav_planning_msgs/PolynomialSegment4D
    Header header
    int32 num_coeffs        # order of the polynomial + 1, should match size of x[]
    duration segment_time   # duration of the segment
    float64[] x             # coefficients for the x-axis, INCREASING order
    float64[] y             # coefficients for the y-axis, INCREASING order
    float64[] z             # coefficients for the z-axis, INCREASING order
    float64[] yaw           # coefficients for the yaw, INCREASING order
    
    ================================================================================
    MSG: trajectory_msgs/MultiDOFJointTrajectory
    # The header is used to specify the coordinate frame and the reference time for the trajectory durations
    Header header
    
    # A representation of a multi-dof joint trajectory (each point is a transformation)
    # Each point along the trajectory will include an array of positions/velocities/accelerations
    # that has the same length as the array of joint names, and has the same order of joints as 
    # the joint names array.
    
    string[] joint_names
    MultiDOFJointTrajectoryPoint[] points
    
    ================================================================================
    MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint
    # Each multi-dof joint can specify a transform (up to 6 DOF)
    geometry_msgs/Transform[] transforms
    
    # There can be a velocity specified for the origin of the joint 
    geometry_msgs/Twist[] velocities
    
    # There can be an acceleration specified for the origin of the joint 
    geometry_msgs/Twist[] accelerations
    
    duration time_from_start
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
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
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlannerServiceResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.polynomial_plan !== undefined) {
      resolved.polynomial_plan = PolynomialTrajectory.Resolve(msg.polynomial_plan)
    }
    else {
      resolved.polynomial_plan = new PolynomialTrajectory()
    }

    if (msg.polynomial_plan_4D !== undefined) {
      resolved.polynomial_plan_4D = PolynomialTrajectory4D.Resolve(msg.polynomial_plan_4D)
    }
    else {
      resolved.polynomial_plan_4D = new PolynomialTrajectory4D()
    }

    if (msg.sampled_plan !== undefined) {
      resolved.sampled_plan = trajectory_msgs.msg.MultiDOFJointTrajectory.Resolve(msg.sampled_plan)
    }
    else {
      resolved.sampled_plan = new trajectory_msgs.msg.MultiDOFJointTrajectory()
    }

    return resolved;
    }
};

module.exports = {
  Request: PlannerServiceRequest,
  Response: PlannerServiceResponse,
  md5sum() { return '118771e195038ced9b4ddec299814131'; },
  datatype() { return 'mav_planning_msgs/PlannerService'; }
};
