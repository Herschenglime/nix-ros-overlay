
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, cmake-modules, diagnostic-msgs, diagnostic-updater, eigen, eigen-conversions, geographic-msgs, geographiclib, geometry-msgs, gtest, libmavconn, mavlink, mavros-msgs, message-runtime, nav-msgs, pluginlib, rosconsole-bridge, roscpp, rospy, rosunit, sensor-msgs, std-msgs, std-srvs, tf2-eigen, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-mavros";
  version = "1.20.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/noetic/mavros/1.20.0-1.tar.gz";
    name = "1.20.0-1.tar.gz";
    sha256 = "d03ac9e057f6937796dc92cf49ffc8ba5fd93a410f18419c7f9d834c41eb2626";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin cmake-modules ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ boost diagnostic-msgs diagnostic-updater eigen eigen-conversions geographic-msgs geographiclib geometry-msgs libmavconn mavlink mavros-msgs message-runtime nav-msgs pluginlib rosconsole-bridge roscpp rospy sensor-msgs std-msgs std-srvs tf2-eigen tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "MAVROS -- MAVLink extendable communication node for ROS
    with proxy for Ground Control Station.";
    license = with lib.licenses; [ gpl3Only lgpl3Only bsdOriginal ];
  };
}
