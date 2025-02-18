
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, control-msgs, eigen, filters, generate-parameter-library, geometry-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools }:
buildRosPackage {
  pname = "ros-jazzy-control-toolbox";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_toolbox-release/archive/release/jazzy/control_toolbox/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "b9017d043a7705a47ef1d5b2fe14c243ad5d983dc7bb40d5ff57f576f0d79fa8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest rclcpp-lifecycle ];
  propagatedBuildInputs = [ control-msgs eigen filters generate-parameter-library geometry-msgs pluginlib rclcpp rcutils realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The control toolbox contains modules that are useful across all controllers.";
    license = with lib.licenses; [ asl20 ];
  };
}
