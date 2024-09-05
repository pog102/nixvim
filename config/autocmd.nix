{

  autoCmd = [

    # {
    #   event = [ "BufWinLeave" ];
    #   pattern = [ "*" ];
    #   callback = { __raw = "mkview"; };
    # }
    # {
    #   event = [ "BufWinEnter" ];
    #   pattern = [ "*" ];
    #   callback = { __raw = "silent! loadview"; };
    # }
    {
      event = [ "BufWritePre" ];
      pattern = [ "*" ];
      callback = { __raw = "function(args) require('conform').format({ bufnr = args.buf }) end"; };
    }
    # {
    #   event = [ "bufnewfile" ];
    #   pattern = [ "*.nix" ];
    #   command = "0r ~/.config/nvim/templates/skel.nix";
    # }
    # {
    #   event = [ "bufnewfile" ];
    #   pattern = [ "*.sh" ];
    #   command = "0r ~/.config/nvim/templates/skeleton.sh";
    # }
  ];

}
