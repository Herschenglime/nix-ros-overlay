
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-rcgcrd-spl-4";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/game_controller_spl-release/archive/release/jazzy/rcgcrd_spl_4/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "469bd95ab150284d9028e051beedf2530db67f15a40b2bf994f04f376326e617";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RoboCup SPL GameController Return Data V4 ROS msg";
    license = with lib.licenses; [ asl20 ];
  };
}
