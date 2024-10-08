{ pkgs, ... }:
{
  extraConfigLua = ''
        vim.g["conmenu#default_menu"] = {
          {
    "Name", "Lazygit",
          },

          {
    "Name", "Lazygit",
          },
        
          {
    "Names", {

          {
    "Name", "Lazygit",
          },

          {
    "Name", "Lazygit",
          },
          },
        },
        }
           vim.api.nvim_set_hl(0, "KeyHighlight", { fg = "#569CD6" })
           vim.g["conmenu#shortcut_highlight_group"] = "KeyHighlight"
  '';

  extraConfigVim = ''
      let g:conmenu#default_menu = [
      \['Scripts', ":lua require('conmenu').fromNpm()",
        \{ 'filter': 'IsInNodeProject' }],
      \['Lerna Projects', ":lua require('conmenu').fromLerna()",
        \{ 'filter': 'IsInNodeProject' }],
    \]

  '';
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "conmenu";
      src = pkgs.fetchFromGitHub {
        owner = "meznaric";
        repo = "conmenu";
        rev = "master";
        hash = "sha256-GkmbZiR6WOLCQuMs7PEq80erz28EfvjJyn50IlOVr2g=";
      };
    })
  ];
}
