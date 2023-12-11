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

class SetTemperatureRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTemperatureRequest
    // Serialize message field [temperature]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTemperatureRequest
    let len;
    let data = new SetTemperatureRequest(null);
    // Deserialize message field [temperature]
    data.temperature = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_ros_battery/SetTemperatureRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef84ef3026ebaa21b37f5b167de3d809';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 temperature
    
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
    const resolved = new SetTemperatureRequest(null);
    if (msg.temperature !== undefined) {
      resolved.temperature = std_msgs.msg.Float32.Resolve(msg.temperature)
    }
    else {
      resolved.temperature = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

class SetTemperatureResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTemperatureResponse
    // Serialize message field [temperature]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTemperatureResponse
    let len;
    let data = new SetTemperatureResponse(null);
    // Deserialize message field [temperature]
    data.temperature = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gazebo_ros_battery/SetTemperatureResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef84ef3026ebaa21b37f5b167de3d809';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32 temperature
    
    
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
    const resolved = new SetTemperatureResponse(null);
    if (msg.temperature !== undefined) {
      resolved.temperature = std_msgs.msg.Float32.Resolve(msg.temperature)
    }
    else {
      resolved.temperature = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = {
  Request: SetTemperatureRequest,
  Response: SetTemperatureResponse,
  md5sum() { return 'cff89ed8489cfa6e56ffd34457ea253c'; },
  datatype() { return 'gazebo_ros_battery/SetTemperature'; }
};
