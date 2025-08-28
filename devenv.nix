{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  packages = [ pkgs.git ];
  # https://devenv.sh/languages/
  languages.go.enable = true;

  tasks = {
    "go:mod-tidy" = {
      exec = "go mod tidy";
      # execIfModified = [];
      before = [ "devenv:enterShell" ];
    };
  };
  # https://devenv.sh/git-hooks/
  git-hooks.hooks = {
    gofmt.enable = true;
  };

}
