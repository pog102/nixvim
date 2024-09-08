{
  plugins = {

    lspkind.enable = true;
    cmp_luasnip.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp = {
      # snippet.expand = "luasnip";

      enable = true;
      autoEnableSources = true;
      settings = {
        sources = [
          { name = "nvim_lsp"; }
          { name = "luasnip"; } #For luasnip users.
          { name = "path"; }
          { name = "nerdfont"; }
          { name = "buffer"; }
        ];
        window = {
          completion = {
            winhighlight =
              # "FloatBorder:"Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None"CmpBorder,Normal:CmpPmenu,CursorLine:CmpSel,Search:PmenuSel";
              "Normal:bg,FloatBorder:bg,CursorLine:PmenuSel,Search:None";
            #   "FloatBorder:CmpBorder,Normal:CmpBorder";
            # winhighlight = "Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None";
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
