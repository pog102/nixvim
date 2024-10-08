{ pkgs, ... }:
{
  extraConfigLua = ''
      local options = {
        {
          name = "Lazygit",
          cmd = "Lazygit",
          hl = "Exblue",
          rtxt = "<leader>ca",
        },
        {
          name = "Todo",
          cmd = "TodoTelescope"
          hl = "ExRed",
          rtxt = "<leader>ca",
        },
      
    --    { name = "separator" },

    {
      name = "  Lsp Actions",
      hl = "Exblue",
      items = "lsp",
    },
      }
        -- Keyboard users
         vim.keymap.set("n", "<C-t>", function()
           require("menu").open(options, {mouse=false})
         end, {})

      -- mouse users + nvimtree users!
         vim.keymap.set("n", "<RightMouse>", function()
           vim.cmd.exec '"normal! \\<RightMouse>"'

           -- local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
           require("menu").open(options, { mouse = true })
         end, {})
  '';
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "volt";
      src = pkgs.fetchFromGitHub {
        owner = "NvChad";
        repo = "volt";
        rev = "master";
        hash = "sha256-Pa0Ra9s+N6Hcy4L1j6GHEgbk8jQWzpQYfSYmDG/UnaY=";
      };
    })
    (pkgs.vimUtils.buildVimPlugin {
      name = "menu";
      src = pkgs.fetchFromGitHub {
        owner = "NvChad";
        repo = "menu";
        rev = "master";
        hash = "sha256-26R6cs8LxX9vPxu3SpWRpgelzS8HfgXtCEd/PdKFWfg=";
      };
    })
  ];
}
