
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, nao-lola-command-msgs, nao-lola-sensor-msgs, rcl-interfaces, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-nao-lola-client";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/rolling/nao_lola_client/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "58e44ce337dcfb820176dc1cf7066a066a15fab3fed09266cb89ad6a05a67c8c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost nao-lola-command-msgs nao-lola-sensor-msgs rcl-interfaces rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Packages that allow communicating with the NAO's Lola middle-ware.";
    license = with lib.licenses; [ asl20 ];
  };
}
