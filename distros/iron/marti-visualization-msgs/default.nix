
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-marti-visualization-msgs";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/iron/marti_visualization_msgs/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "fd16cb0d8ebdfcaeab9d0e1ad0998c1ca68b91a172cf751ce6110ba03bddacf2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_visualization_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
