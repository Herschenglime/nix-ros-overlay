
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ffmpeg-image-transport-msgs";
  version = "1.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ffmpeg_image_transport_msgs-release/archive/release/jazzy/ffmpeg_image_transport_msgs/1.0.2-3.tar.gz";
    name = "1.0.2-3.tar.gz";
    sha256 = "34f6a2be9d2b89b37b1c7122428088dc9bfa6d8fa58bfb6a0fe11a9d647dfef9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "messages for ffmpeg image transport plugin";
    license = with lib.licenses; [ "Apache-2" ];
  };
}
