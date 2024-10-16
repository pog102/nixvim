{ pkgs, ... }:
{
  extraConfigLua = ''
    require("tide").setup({
      -- optional configuration
    })
  '';
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "tide.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "jackMort";
        repo = "tide.nvim";
        rev = "master";
        hash = "sha256-Xrx/NEMZFwL2JZpVTVv/AvyN9EOQcyw2kzPmEPMoq2E=";
      };
    })
  ];
}
