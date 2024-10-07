{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "vim-nixhash";
      src = pkgs.fetchFromGitHub {
        owner = "symphorien";
        repo = "vim-nixhash";
        rev = "master";
        hash = "sha256-08OUBQ8NQLsMMrbjF6JEddG6KGrX5lwnpXvCVtjAkJE=";

      };
    })
  ];
}
