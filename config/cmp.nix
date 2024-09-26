{
  extraConfigLua = ''
    vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#89ddff" })  -- Cyan
    vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = "#c3e88d" })      -- Light Green
    vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#82aaff" })  -- Light Blue
    vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#c792ea" })    -- Purple
    vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = "#f07178" })   -- Red/Pink
    vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#ffcb6b" })   -- Yellow
    vim.api.nvim_set_hl(0, "CmpItemKindCodeium", { fg = "#56b6c2" })   -- Teal
  '';
  plugins = {
    lspkind = {
      enable = true;
      # mode = "symbol";
      symbolMap = { Codeium = ""; };
    };
    cmp-digraphs.enable = true;
    cmp_luasnip.enable = true;
    # cmp-spell.enable = true;
    cmp-dictionary.enable = true;
    cmp-nvim-lsp.enable = true;

    #  ū
    cmp = {
      # snippet.expand = "luasnip";

      enable = true;
      autoEnableSources = true;
      settings = {
        formatting = {
          # format = ''
          #   require('lspkind').cmp_format({
          #               mode = "symbol",
          #               maxwidth = 50,
          #               ellipsis_char = '...',
          #               symbol_map = { Codeium = "", }
          #           })
          # '';
          fields = [
            "abbr"

            "kind"
            # "menu"
          ];
        };
        sources = [
          { name = "codeium"; }
          { name = "luasnip"; } #For luasnip users.
          { name = "nvim_lsp"; }
          { name = "path"; }
          # { name = "nerdfont"; }
          { name = "buffer"; }
          { name = "digraphs"; }
          # FIX: how do i 
          # make this work !?!?! 

          # {
          #   name = "dictionary";
          #   # keyword_length = 2;
          # }


        ];
        window = {
          completion = {
            winhighlight =
              "Normal:bg,FloatBorder:bg,CursorLine:PmenuSel,Search:None";

            scrollbar = false;

            sidePadding = 0;
            border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│" ];
          };


          documentation = {
            border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│" ];
            winhighlight = "Normal:bg,FloatBorder:bg";
            # winhighlight =
            #   "FloatBorder:CmpBorder,Normal:CmpPmenu,CursorLine:CmpSel,Search:PmenuSel";
            # "FloatBorder:CmpBorder,Normal:CmpPmenu,CursorLine:CmpSel,Search:PmenuSel";
          };
        };
        #
      };
      cmdline = {
        "/" = {
          mapping = {
            __raw = "cmp.mapping.preset.cmdline()";
          };
          sources = [
            {
              name = "buffer";
            }
          ];
        };
        ":" = {
          mapping = {
            __raw = "cmp.mapping.preset.cmdline()";
          };
          sources = [
            {
              name = "path";
            }
            {
              name = "cmdline";
              option = {
                ignore_cmds = [
                  "Man"
                  "!"
                ];
              };
            }
          ];
        };

      };
      settings = {
        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-e>" = "cmp.mapping.close()";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          # "<S-Tab>" = {
          #   action = "cmp.mapping.select_prev_item()";
          #   modes = [
          #     "i"
          #     "s"
          #   ];
          # };
          "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";

        };
      };
    };
  };




}
