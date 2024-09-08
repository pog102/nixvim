{
  plugins = {

    lualine = {
      enable = true;
      disabledFiletypes = {
        statusline = [ "dashboard" "alpha" ];
      };
      sectionSeparators.left = "";
      sectionSeparators.right = "";
      componentSeparators.left = "";
      componentSeparators.right = "";
      sections = {
        lualine_a = [
          {

            name = "mode";
            extraConfig = {
              icon = "";
            };
          }
        ];
        lualine_b = [
          {
            name = "branch";
            extraConfig = {
              icon = "";
            };
          }
          {
            name = "diff";
            extraConfig = {
              colored = true;

              diff_color = {
                added = {
                  fg = "#98be65";
                };
                modified = {

                  fg = "#ECBE7B";
                };
                removed = {

                  fg = "#ec5f67";
                };
                # added = "LuaLineDiffAdd";
                # modified = "LuaLineDiffChange";
                # removed = "LuaLineDiffDelete";
              };

              symbols = {
                added = " ";
                modified = "󰏬 ";
                removed = " ";
              };
            };
          }
          {
            name = "filetype";
            extraConfig = {
              icon_only = true;
              icon = {
                align = "right";
              };
            };
            separator.right = "";
            padding.right = 0;
            padding.left = 1;
          }
          {
            # icons_enabled = true;
            name = "filename";
            padding.left = 0;
            padding.right = 1;
            extraConfig = {
              file_status = false;
              symbols = {
                # modified = " ";
                modified = "";
                readonly = "";
                unnamed = "󰡯";
                newfile = "";
              };
            };
            # icon = get_icon()
          }
        ];

        lualine_c = [
          {
            name = "diagnostics";
            extraConfig = {
              sources = [
                "nvim_diagnostic"
                "nvim_lsp"
              ];
              # diagnostics_color = {
              #   error = "DiagnosticError";
              #   warn = "DiagnosticWarn";
              #   info = "DiagnosticInfo";
              #   hint = "DiagnosticHint";
              #   # fg = "#b4befe";
              #   bg = "grey";
              # };
              # colored = false;
              symbols = {
                error = " ";
                warn = " ";
                info = " ";
                hint = "󰝶 ";
              };
            };
            color = {
              #   fg =
              #     # if config.colorschemes.base16.enable
              #     # then colors.base08
              #     # else "none";
              # bg = "ctermbg";
              # bg = "grey";
              #     # if config.colorschemes.base16.enable
              #     # then colors.base00
              #     # else "none";
            };
          }
        ];



        lualine_x = [
          {
            name = "fileformat";
            extraConfig = {
              symbols = {
                unix = "";
                dos = "";
                mac = "";
              };
            };

          }
        ];
        lualine_y = [
        ];
        lualine_z = [
          {
            name = "location";
          }
        ];
      };
      inactiveSections = {
        lualine_a = [

        ];

        lualine_y = [
        ];
        lualine_z = [
          {
            # separator.right = "";
            # padding.left=2;
          }
        ];
      };
      # 	sections.lualine_a.mode = {
      # separator.left =  "";
      #
      # padding.right = 2;
      # 	};



      # lualine_b = { 'filename', 'branch' };
      #     lualine_c = { 'fileformat' };
      #     lualine_x = {};
      #     lualine_y = { 'filetype', 'progress' },
      #     lualine_z = {
      #       { 'location', separator = { right = '' }, left_padding = 2 },
      #    };


    };


  };
}
