{

  # TODO: add normal colors
  extraConfigLua = ''
    vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#6CC644" })
    vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = "#6CC644" })
    vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#6CC644" })
    vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#6CC644" })
    vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = "#6CC644" })
    vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#6CC644" })
    vim.api.nvim_set_hl(0, "CmpItemKindCodeium", { fg = "#6CC641" })
  '';
  plugins = {

    lspkind = {
      enable = true;
      # mode = "symbol";
      symbolMap = { Codeium = ""; };
    };
    cmp_luasnip.enable = true;

    cmp-nvim-lsp.enable = true;

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
            "kind"
            "abbr"
            "menu"
          ];
        };
        sources = [
          { name = "codeium"; }
          { name = "luasnip"; } #For luasnip users.
          { name = "nvim_lsp"; }
          { name = "path"; }
          # { name = "nerdfont"; }
          { name = "buffer"; }
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
