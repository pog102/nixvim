{ pkgs, ... }:
let
  name = "render-markdown.nvim";
in
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = name;
      src = pkgs.fetchFromGitHub {
        owner = "MeanderingProgrammer";
        repo = name;
        rev = "master";
        hash = "sha256-Sc4xAyrHqmfasRpKrLS+erumiOJcayMpQD5iWh37LHw=";
      };
    })
  ];
}
