{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "helpview.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "OXY2DEV";
        repo = "helpview.nvim";
        rev = "master";
        hash = "sha256-x5ZV/1LKrxhQWsxsJwrIfD7BogKO7H2GKzDt3PABEh8=";
      };
    })
  ];
}
