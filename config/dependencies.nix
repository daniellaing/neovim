{lib, ...}: let
  deps = ["git" "ripgrep"];
in {
  dependencies = lib.genAttrs deps (d: {enable = true;});
}
