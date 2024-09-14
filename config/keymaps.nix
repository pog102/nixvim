{

  keymaps = [

    # {
    #     action = "!xdg-open <cfile><CR>";
    #     key = "gx";
    # mode = "n";
    #     options = { 
    #       silent = true;
    #     };
    #   }

    # {
    #   action = ":lua require'sniprun'.run('v')";
    #   key = "r";
    #   mode = "n";
    #   options = {
    #     silent = true;
    #   };
    # }
    # {
    #   action = ":IncRename ";
    #   key = "q";
    #   mode = "n";
    #   options = {
    #     # silent = true;
    #   };
    # }
    {
      action = "<cmd>lua require('luasnip').jump(1)<CR>";
      key = "<C-L>";
      mode = "i";
      options = {
        silent = true;
      };
    }
    {
      action = "/";
      key = "<C-f>";
      mode = "n";
      options = {
        silent = false;
      };
    }
    {
      action = "function() require('dap').toggle_breakpoint()";
      key = "<F1>";
      mode = "n";
      options = {
        silent = true;
      };
    }
    # {
    #   action = "<cmd>Neotree toggle<CR>";
    #   key = "q";
    #   mode = "n";
    #   options = {
    #     silent = true;
    #   };
    # }
    {
      action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
      key = "qf";
      mode = "n";
      options = {
        silent = true;
      };
    }
    {
      action = "function() require('dap').continue()";
      key = "<F5>";
      mode = "n";
      options = {
        silent = true;
      };
    }
    {
      action = "<cmd>wincmd j<CR>";
      key = "<c-s>";
      mode = "n";
      options = {
        silent = true;
      };
    }
    {
      action = "<cmd>wincmd h<CR>";
      key = "<c-a>";
      mode = "n";
      options = {
        silent = true;
      };
    }
    {
      action = "<cmd>wincmd l<CR>";
      key = "<c-d>";
      mode = "n";
      options = {
        silent = true;
      };
    }
    {
      action = "<cmd>wincmd k<CR>";
      key = "<c-w>";
      mode = "n";
      options = {
        silent = true;
      };
    }
    {
      action = "<cmd>bdelete<CR>";
      key = "d<Tab>";
      mode = "n";
      options = {
        silent = true;
      };
    }

    {
      action = "<cmd>bnext<CR>";
      key = "<Tab>";
      mode = "n";
      options = {
        silent = true;
      };
    }

    {
      action = "<cmd>Telescope find_files<CR>";
      key = "ff";
      mode = "n";
      options = {
        silent = true;
      };
    }
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "fg";
      mode = "n";
      options = {
        silent = true;
      };
    }
    {
      action = "<cmd>Telescope oldfiles<CR>";
      key = "fd";
      mode = "n";
      options = {
        silent = true;
      };
    }
  ];
}
