
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rosidl-parser }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-pycommon";
  version = "4.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/jazzy/rosidl_pycommon/4.6.5-1.tar.gz";
    name = "4.6.5-1.tar.gz";
    sha256 = "255a02aff5f5c54b0a45278f2fd7e1aa850ca689390eb253ee2f375ac1ee77f5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rosidl-parser ];

  meta = {
    description = "Common Python functions used by rosidl packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
