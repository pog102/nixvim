{
  plugins = {
    treesitter = {
      enable = true;
      settings =
        {
          indent = {
            enable = true;
          };
        };
      nixvimInjections = true;
    };
  };
}
