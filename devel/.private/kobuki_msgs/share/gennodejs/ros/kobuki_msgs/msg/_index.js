
"use strict";

let DockInfraRed = require('./DockInfraRed.js');
let RobotStateEvent = require('./RobotStateEvent.js');
let ControllerInfo = require('./ControllerInfo.js');
let BumperEvent = require('./BumperEvent.js');
let DigitalInputEvent = require('./DigitalInputEvent.js');
let ScanAngle = require('./ScanAngle.js');
let Led = require('./Led.js');
let VersionInfo = require('./VersionInfo.js');
let ExternalPower = require('./ExternalPower.js');
let PowerSystemEvent = require('./PowerSystemEvent.js');
let ButtonEvent = require('./ButtonEvent.js');
let CliffEvent = require('./CliffEvent.js');
let SensorState = require('./SensorState.js');
let DigitalOutput = require('./DigitalOutput.js');
let KeyboardInput = require('./KeyboardInput.js');
let WheelDropEvent = require('./WheelDropEvent.js');
let Sound = require('./Sound.js');
let MotorPower = require('./MotorPower.js');
let AutoDockingResult = require('./AutoDockingResult.js');
let AutoDockingFeedback = require('./AutoDockingFeedback.js');
let AutoDockingGoal = require('./AutoDockingGoal.js');
let AutoDockingActionFeedback = require('./AutoDockingActionFeedback.js');
let AutoDockingActionGoal = require('./AutoDockingActionGoal.js');
let AutoDockingAction = require('./AutoDockingAction.js');
let AutoDockingActionResult = require('./AutoDockingActionResult.js');

module.exports = {
  DockInfraRed: DockInfraRed,
  RobotStateEvent: RobotStateEvent,
  ControllerInfo: ControllerInfo,
  BumperEvent: BumperEvent,
  DigitalInputEvent: DigitalInputEvent,
  ScanAngle: ScanAngle,
  Led: Led,
  VersionInfo: VersionInfo,
  ExternalPower: ExternalPower,
  PowerSystemEvent: PowerSystemEvent,
  ButtonEvent: ButtonEvent,
  CliffEvent: CliffEvent,
  SensorState: SensorState,
  DigitalOutput: DigitalOutput,
  KeyboardInput: KeyboardInput,
  WheelDropEvent: WheelDropEvent,
  Sound: Sound,
  MotorPower: MotorPower,
  AutoDockingResult: AutoDockingResult,
  AutoDockingFeedback: AutoDockingFeedback,
  AutoDockingGoal: AutoDockingGoal,
  AutoDockingActionFeedback: AutoDockingActionFeedback,
  AutoDockingActionGoal: AutoDockingActionGoal,
  AutoDockingAction: AutoDockingAction,
  AutoDockingActionResult: AutoDockingActionResult,
};
