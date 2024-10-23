{

  # extraConfigLua = ''
  #       --Enable (broadcasting) snippet capability for completion
  #   local capabilities = vim.lsp.protocol.make_client_capabilities()
  #   capabilities.textDocument.completion.completionItem.snippetSupport = true
  #
  #   require'lspconfig'.html.setup {
  #     capabilities = capabilities,
  #   }
  #
  # '';


  # extraConfigLua = ''
  #       require'lspconfig'.rust_analyzer.setup{
  #     settings = {
  #       ['rust-analyzer'] = {
  #         diagnostics = {
  #           enable = false;
  #         }
  #       }
  #     }
  #   }
  #
  # '';
  # nix.nixPath = [ "nixpkgs=${inputs.nixpkgs}" ];

  plugins = {
    lsp = {
      enable = true;
      servers = {
        # tailwindcss.enable = true;
        # tsserver.enable = true;

        clangd.enable = true;
        nixd = {
          enable = true;
          settings = {
            nixpkgs.expr = "import <nixpkgs> { }";
            # nixpkgs.expr = "import (builtins.getFlake \"github:pog102/nvim\").inputs.nixvim { }";
            options."nixos".expr = "(builtins.getFlake \"github:pog102/nixos-config-main\").nixosConfigurations.default.options; )";
            # options."home-manager".expr = "(builtins.getFlake \"github:pog102/nixos-config-main\").nixosConfigurations.default.options; )"; # dont need it i think
            # options."nixvim".expr = "(builtins.getFlake \"github:pog102/nvim\").nixosConfigurations.default.options; )"; #?? idk if possible
          };
        };
        # nil-ls.enable = true;
        rust-analyzer.enable = true;
        rust-analyzer.installCargo = true;
        # html.enable = true;
        bashls.enable = true;
        # cssls = {
        #   enable = true;
        # };
        lua-ls = {
          enable = true;
          # settings.hint.enable = true;
        };
      };





    };
  };


}
