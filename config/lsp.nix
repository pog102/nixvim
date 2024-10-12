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
  plugins = {
    lsp = {
      enable = true;
      servers = {
        # tailwindcss.enable = true;
        # tsserver.enable = true;

        clangd.enable = true;
        # nixd.enable = true;
        nil-ls.enable = true;
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
