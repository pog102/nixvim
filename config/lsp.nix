{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        # tailwindcss.enable = true;
        tsserver.enable = true;
        clangd.enable = true;
        nixd.enable = true;
        html.enable = true;
        bashls.enable = true;

        cssls = {
          enable = true;
        };
        lua-ls = {
          enable = true;
          # settings.hint.enable = true;
        };
      };





    };
  };


}
