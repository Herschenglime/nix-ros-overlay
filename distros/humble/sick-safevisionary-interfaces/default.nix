
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-sick-safevisionary-interfaces";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/humble/sick_safevisionary_interfaces/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "45ba7100f1a4739558fb2b32c44815118259a4f5badb999461a2c1bf658ff163";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Provides interface descriptions to communicate with a SICK Safevisionary Sensor over ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
