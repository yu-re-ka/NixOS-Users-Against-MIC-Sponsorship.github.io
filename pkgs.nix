let
  rev = "3030f185ba6a4bf4f18b87f345f104e6a6961f34";
  sha256 = "sha256:0v5q4zadnmdiv8hwcsx804l8radx562aqdw0r5nld127c8f7jzz8";
  owner = "NixOS";
  repo = "nixpkgs";
in
fetchTarball {
  url = "https://github.com/${owner}/${repo}/archive/${rev}.tar.gz";
  inherit sha256;
}
