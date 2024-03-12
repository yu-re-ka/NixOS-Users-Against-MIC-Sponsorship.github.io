{ runCommand
, cmark-gfm
}:

runCommand "signatures" {
  src = ../../signatures;
  nativeBuildInputs = [
    cmark-gfm
  ];
}
''
(
  cd $src
  for f in *; do
    entry="$(cat "$f" | tr $'\n' " " | cmark-gfm --to plaintext | head -n1)"
    if test -n "$entry"; then
      printf "<li>%s</li><!-- $f -->\n" "$entry"
    fi
  done
) > $out
''
