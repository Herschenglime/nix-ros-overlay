
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, boost, controller-interface, geographic-msgs, gtk3, hardware-interface, nmea-msgs, ouxt-lint-common, pkg-config, pluginlib, quaternion-operation, rclcpp, rclcpp-components, realtime-tools, ros2-control, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-nmea-hardware-interface";
  version = "0.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nmea_hardware_interface-release/archive/release/jazzy/nmea_hardware_interface/0.0.1-5.tar.gz";
    name = "0.0.1-5.tar.gz";
    sha256 = "47257e38a543fc5f91fc6ee5c30da6025d3f8e831e80e02ee4b4d5f51da3f274";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  propagatedBuildInputs = [ boost controller-interface geographic-msgs gtk3 hardware-interface nmea-msgs pkg-config pluginlib quaternion-operation rclcpp rclcpp-components realtime-tools ros2-control rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2 hardware interface for nmea_gps";
    license = with lib.licenses; [ "apache-2.0" ];
  };
}
