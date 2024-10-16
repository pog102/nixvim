{
  # TODO: make window about 30px height
  extraConfigLua = ''
    vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = vim.api.nvim_get_hl_by_name("Identifier", true).foreground })
    vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = vim.api.nvim_get_hl_by_name("String", true).foreground })
    vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = vim.api.nvim_get_hl_by_name("Function", true).foreground })
    vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = vim.api.nvim_get_hl_by_name("Keyword", true).foreground })
    vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = vim.api.nvim_get_hl_by_name("Constant", true).foreground })
    vim.api.nvim_set_hl(0, "CmpItemKindCodeium", { fg = vim.api.nvim_get_hl_by_name("Comment", true).foreground })
    
  '';

  plugins = {
    lspkind = {
      enable = true;
      # mode = "symbol";
      symbolMap = { Codeium = ""; };
      # cmp.maxWidth = 20;
    };

    cmp-digraphs.enable = true;
    cmp_luasnip.enable = true;
    # cmp-spell.enable = true;
    # cmp-dictionary.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-vsnip.enable = true;

    cmp = {
      # snippet.expand = "luasnip";

      enable = true;
      autoEnableSources = true;
      settings = {

        formatting = {
          # format = ''
          #     function(entry, vim_item)
          #     vim_item.abbr = string.sub(vim_item.abbr, 1, 20)
          #     return vim_item
          #   end
          # '';
          # fields = [
          #   "abbr"
          #   "kind"
          #   # "menu"
          # ];
        };
        sources = [
          { name = "codeium"; }
          { name = "luasnip"; } #For luasnip users.
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "vsnip"; }
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
            # side_padding = 0;
            # sidePadding = 0;
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
