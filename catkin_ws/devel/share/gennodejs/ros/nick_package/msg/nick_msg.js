// Auto-generated. Do not edit!

// (in-package nick_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class nick_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.n = null;
      this.s = null;
      this.a = null;
    }
    else {
      if (initObj.hasOwnProperty('n')) {
        this.n = initObj.n
      }
      else {
        this.n = 0;
      }
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = '';
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type nick_msg
    // Serialize message field [n]
    bufferOffset = _serializer.int64(obj.n, buffer, bufferOffset);
    // Serialize message field [s]
    bufferOffset = _serializer.string(obj.s, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = _arraySerializer.float64(obj.a, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type nick_msg
    let len;
    let data = new nick_msg(null);
    // Deserialize message field [n]
    data.n = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [s]
    data.s = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.s.length;
    length += 8 * object.a.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nick_package/nick_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b032e12b06e68c838c7198038d244ba6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 n
    string s
    float64[] a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new nick_msg(null);
    if (msg.n !== undefined) {
      resolved.n = msg.n;
    }
    else {
      resolved.n = 0
    }

    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = ''
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = []
    }

    return resolved;
    }
};

module.exports = nick_msg;
