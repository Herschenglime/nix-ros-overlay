
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, eigen, eigen3-cmake-module, fmt, generate-parameter-library, launch-testing-ament-cmake, message-filters, moveit-common, moveit-configs-utils, moveit-core, moveit-msgs, moveit-resources-panda-moveit-config, moveit-ros-occupancy-map-monitor, pluginlib, rclcpp, rclcpp-action, rclcpp-components, ros-testing, srdfdom, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-msgs, tf2-ros, urdf }:
buildRosPackage {
  pname = "ros-jazzy-moveit-ros-planning";
  version = "2.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_ros_planning/2.12.1-1.tar.gz";
    name = "2.12.1-1.tar.gz";
    sha256 = "6357ba3028ed47fe01466d751ed149e555bf1a376de78f181d07b38d03d48ac9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest launch-testing-ament-cmake moveit-configs-utils moveit-resources-panda-moveit-config ros-testing ];
  propagatedBuildInputs = [ ament-index-cpp eigen eigen3-cmake-module fmt generate-parameter-library message-filters moveit-common moveit-core moveit-msgs moveit-ros-occupancy-map-monitor pluginlib rclcpp rclcpp-action rclcpp-components srdfdom std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-msgs tf2-ros urdf ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Planning components of MoveIt that use ROS";
    license = with lib.licenses; [ bsd3 ];
  };
}
