{ lib, pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "leetcode.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "kawre";
        repo = "leetcode.nvim";
        rev = "master";
        hash = "sha256-YoFRd9Uf+Yv4YM6/l7MVLMjfRqhroSS3RCmZvNowIAo=";
      };
    })
  ];
}
