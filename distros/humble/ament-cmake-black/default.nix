
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-black, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-black";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_black-release/archive/release/humble/ament_cmake_black/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "b55fc5d76436856fec0390e0f1a5ccb48b2d7b162ec401b878de246f42d01b2c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ ament-black ament-cmake-test ];
  nativeBuildInputs = [ ament-black ament-cmake-core ament-cmake-test ];

  meta = {
    description = "The CMake API for ament_black to lint Python code using black.";
    license = with lib.licenses; [ asl20 ];
  };
}
