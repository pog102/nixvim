{

  plugins = {
    dashboard = {
      enable = true;
      settings = {
        change_to_vcs_root = true;
        config = {
          footer = [
            "Made with love"
          ];
          header = [
            "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
            "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
            "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
            "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
            "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
            "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
          ];
          mru = {
            limit = 20;
          };
          project = {
            enable = false;
          };
          shortcut = [
            {
              action = {
                __raw = "function(path) vim.cmd('Telescope oldfiles') end";
              };
              desc = "OldFiles";
              group = "Label";
              icon = " ";
              icon_hl = "@variable";
              key = "o";
            }
            {
              action = {
                __raw = "function(path) vim.cmd('Telescope find_files') end";
              };
              desc = "Files";
              group = "Label";
              icon = " ";
              icon_hl = "@variable";
              key = "f";
            }
            # {
            #   action = "Old files";
            #   desc = " Apps";
            #   icon = " ";
            #   group = "Label";
            #   key = "o";
            # }
            # {
            #   action = "Telescope dotfiles";
            #   desc = " dotfiles";
            #   group = "Number";
            #   key = "d";
            # }
          ];
          week_header = {
            enable = true;
          };
        };
        theme = "hyper";
      };
    };
  };

}
