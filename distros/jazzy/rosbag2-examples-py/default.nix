
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, rclpy, rosbag2-py, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-examples-py";
  version = "0.26.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_examples_py/0.26.6-1.tar.gz";
    name = "0.26.6-1.tar.gz";
    sha256 = "434f6ca7e7133a525d2de3327318a493331e1891727565dc845d4b4a8835625d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy rosbag2-py std-msgs ];

  meta = {
    description = "Python bag writing tutorial";
    license = with lib.licenses; [ asl20 ];
  };
}
