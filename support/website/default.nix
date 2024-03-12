{ runCommand
, cmark-gfm
, signatures
}:

runCommand "website" {
  inherit signatures;
  src = ../../src;
  nativeBuildInputs = [
    cmark-gfm
  ];
}
''
mkdir -p $out
(
  cat "$src/head.inc.html"
  cmark-gfm "$src/index.md"
  echo '<ul class="signatures">'
  cat "$signatures"
  echo '</ul>'
  cat $src/foot.inc.html
) > $out/index.html
cp -prf "$src/styles" "$out/styles"
''
