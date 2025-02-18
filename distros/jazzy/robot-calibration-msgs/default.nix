
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-robot-calibration-msgs";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_calibration-release/archive/release/jazzy/robot_calibration_msgs/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "b494c21b35e082600a93ee060cd0a37c17ae245aa36b370ec7a5fa61f0bcb03f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-generators rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages for calibrating a robot";
    license = with lib.licenses; [ asl20 ];
  };
}
