
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-cmake, boost }:
buildRosPackage {
  pname = "ros-rolling-random-numbers";
  version = "2.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/random_numbers-release/archive/release/rolling/random_numbers/2.0.1-4.tar.gz";
    name = "2.0.1-4.tar.gz";
    sha256 = "2ae642c09f5078eb2640bc0093fe393385a6bfb87c5e43c561b291640e1739a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This  library contains wrappers for generating floating point values, integers, quaternions using boost libraries.

  The constructor of the wrapper is guaranteed to be thread safe and initialize its random number generator to a random seed.
  Seeds are obtained using a separate and different random number generator.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
