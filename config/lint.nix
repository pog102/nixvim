{

  plugins = {

    lint = {
      enable = true;
      lintersByFt = {
        nix = [ "nix" ];
        bash = [ "shellcheck" ];


      };
    };

  };
}
