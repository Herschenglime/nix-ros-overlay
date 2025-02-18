
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-dbw-polaris-description";
  version = "2.1.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_polaris_description/2.1.16-1.tar.gz";
    name = "2.1.16-1.tar.gz";
    sha256 = "0d671f95ba78d15a4ef19732055d3751a37dd43e3fc00a26e9c45ea09b35f81d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ rviz2 ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF and meshes describing Polaris vehicles.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
