
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, angles, control-msgs, controller-interface, controller-manager, geometry-msgs, hardware-interface, hardware-interface-testing, joint-trajectory-controller, lifecycle-msgs, pluginlib, rclcpp-lifecycle, rcutils, realtime-tools, ros2-control-test-assets, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, trajectory-msgs, ur-dashboard-msgs, ur-msgs }:
buildRosPackage {
  pname = "ros-humble-ur-controllers";
  version = "2.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/humble/ur_controllers/2.5.2-1.tar.gz";
    name = "2.5.2-1.tar.gz";
    sha256 = "6bb9a172ed857acca48f40e3bafef999ba6e98204a0706225cb1b8f927bb3dd1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ action-msgs angles control-msgs controller-interface geometry-msgs hardware-interface joint-trajectory-controller lifecycle-msgs pluginlib rclcpp-lifecycle rcutils realtime-tools std-msgs std-srvs tf2-geometry-msgs tf2-ros trajectory-msgs ur-dashboard-msgs ur-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides controllers that use the speed scaling interface of Universal Robots.";
    license = with lib.licenses; [ bsd3 ];
  };
}
