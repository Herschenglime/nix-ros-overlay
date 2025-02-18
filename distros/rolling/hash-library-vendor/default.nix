
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-rolling-hash-library-vendor";
  version = "0.1.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hash_library_vendor-release/archive/release/rolling/hash_library_vendor/0.1.1-6.tar.gz";
    name = "0.1.1-6.tar.gz";
    sha256 = "542b80b6cac36ab95d018c73a7a6514de517b3d06187ce7e6f0b7cf8c52236e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto git ];

  meta = {
    description = "ROS2 vendor package for stbrumme/hash-library";
    license = with lib.licenses; [ asl20 "Zlib-License" ];
  };
}
