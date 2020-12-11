
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-flexbe-onboard";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/noetic/flexbe_onboard/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "c2eb23b74d6d951eb5e541ce57c76bfd0449e654c699132834bf2d2f810be39d";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_onboard implements the robot-side of the behavior engine from where all behaviors are started.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
