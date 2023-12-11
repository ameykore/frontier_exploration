// Auto-generated. Do not edit!

// (in-package gazebo_ros_battery.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetChargeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.charge = null;
    }
    else {
      if (initObj.hasOwnProperty('charge')) {
        this.charge = initObj.charge
      }
      else {
        this.charge = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetChargeRequest
    // Serialize message field [charge]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.charge, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetChargeRequest
    let len;
    let data = new SetChargeRequest(null);
    // Deserialize message field [charge]
    data.charge = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_ros_battery/SetChargeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80f59c2acac1a7362fdf8f840f6184ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 charge
    
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetChargeRequest(null);
    if (msg.charge !== undefined) {
      resolved.charge = std_msgs.msg.Float32.Resolve(msg.charge)
    }
    else {
      resolved.charge = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

class SetChargeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set = null;
    }
    else {
      if (initObj.hasOwnProperty('set')) {
        this.set = initObj.set
      }
      else {
        this.set = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetChargeResponse
    // Serialize message field [set]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.set, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetChargeResponse
    let len;
    let data = new SetChargeResponse(null);
    // Deserialize message field [set]
    data.set = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_ros_battery/SetChargeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e32d9ae87ed2d440e676d16561c582ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Bool set
    
    
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetChargeResponse(null);
    if (msg.set !== undefined) {
      resolved.set = std_msgs.msg.Bool.Resolve(msg.set)
    }
    else {
      resolved.set = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

module.exports = {
  Request: SetChargeRequest,
  Response: SetChargeResponse,
  md5sum() { return 'd7cc9c3639e823f359c406523bae8d4a'; },
  datatype() { return 'gazebo_ros_battery/SetCharge'; }
};
