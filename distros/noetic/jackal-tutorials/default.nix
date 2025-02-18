
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosdoc-lite }:
buildRosPackage {
  pname = "ros-noetic-jackal-tutorials";
  version = "0.8.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/noetic/jackal_tutorials/0.8.10-1.tar.gz";
    name = "0.8.10-1.tar.gz";
    sha256 = "8c08a27ff3bae0a07ce89dda59146951344fff84854a41c2edf8840d5928f073";
  };

  buildType = "catkin";
  buildInputs = [ catkin rosdoc-lite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Jackal's tutorials.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
