
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, behaviortree-cpp, eigen, eigen3-cmake-module, lifecycle-msgs, plansys2-core, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-problem-expert, pluginlib, popf, rclcpp, rclcpp-action, rclcpp-cascade-lifecycle, rclcpp-lifecycle, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-executor";
  version = "2.0.18-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_executor/2.0.18-1.tar.gz";
    name = "2.0.18-1.tar.gz";
    sha256 = "d91b3915a9bc295d271adac9a1fc072fa7cea610b9da8289ff5ca99ced488670";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp behaviortree-cpp eigen eigen3-cmake-module lifecycle-msgs plansys2-core plansys2-domain-expert plansys2-msgs plansys2-pddl-parser plansys2-planner plansys2-problem-expert pluginlib popf rclcpp rclcpp-action rclcpp-cascade-lifecycle rclcpp-lifecycle std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "This package contains the Executor module for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
