{ lib, stdenv, fetchFromGitHub, cmake, ignition, ignition-cmake ? ignition.cmake
, majorVersion ? "6"
, version ? "6.12.0"
, srcSha256 ? "sha256-tKVaRzxLzMfAyL6+xRmmTgFKxFXAjoNyf8pgwOkWb/Q="
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-math${majorVersion}";
  inherit version;

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "ignitionrobotics";
    repo = "ign-math";
    rev = "${pname}_${version}";
    sha256 = srcSha256;
  };

  nativeBuildInputs = [ cmake ];
  propagatedNativeBuildInputs = [ ignition-cmake ];

  cmakeFlags = [
    "-DCMAKE_INSTALL_INCLUDEDIR:PATH=include"
    "-DCMAKE_INSTALL_LIBDIR:PATH=lib"
  ];

  meta = with lib; {
    homepage = "https://ignitionrobotics.org/libs/math";
    description = "Math classes and functions for robot applications";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
