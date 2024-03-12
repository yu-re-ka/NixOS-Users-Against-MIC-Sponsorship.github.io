{ callPackage }:

rec {
  website = callPackage ./website { inherit signatures; };
  signatures = callPackage ./signatures {};
}
