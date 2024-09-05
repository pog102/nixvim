{
  plugins = {


    conform-nvim = {
      enable = true;

      settings.formatters_by_ft =
        {
          nix = [ "nixpkgs_fmt" ];
          bash = [ "shellcheck" ];
          sh = [ "shellcheck" ];
          c = [ "clang-format" ];
          javascript = [ "prettier" "prettierd" ];
          # Conform will run multiple formatters sequentially
          # Use a sub-list to run only the first available formatter
          # Use the "*" filetype to run formatters on all filetypes.
          "*" = [ "codespell" ];
          # Use the "_" filetype to run formatters on filetypes that don't
          # have other formatters configured.
          "_" = [ "trim_whitespace" ];
        };
      #      extraOptions = { ''
      # vim.api.nvim_create_autocmd("BufWritePre", {
      #   pattern = "*",
      #   callback = function(args)
      #     require("conform").format({ bufnr = args.buf })
      #   end,
      # })
      # ''
      # };
    };

  };


}
