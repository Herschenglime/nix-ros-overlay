
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, python3Packages, xacro }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-importer";
  version = "2023.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_importer/2023.1.3-1.tar.gz";
    name = "2023.1.3-1.tar.gz";
    sha256 = "f0eadb664b9f4d23e638c5578c17bcab3ed983bb3348338704bd70f8d6144f8d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.numpy python3Packages.pillow python3Packages.pycodestyle python3Packages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces python3Packages.lark python3Packages.pycollada xacro ];

  meta = {
    description = "This package allows to convert URDF and XACRO files into Webots PROTO files.";
    license = with lib.licenses; [ asl20 ];
  };
}
