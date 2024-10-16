{ lib, pkgs, ... }:
{
  plugins = {


    conform-nvim = {
      enable = true;

      settings = {
        format_on_save.lsp_format = "first";
        # format_on_save = # Lua
        #   ''
        #     function(bufnr)
        #       if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
        #         return
        #       end
        #
        #       if slow_format_filetypes[vim.bo[bufnr].filetype] then
        #         return
        #       end
        #
        #       local function on_format(err)
        #         if err and err:match("timeout$") then
        #           slow_format_filetypes[vim.bo[bufnr].filetype] = true
        #         end
        #       end
        #
        #       return { timeout_ms = 200, lsp_fallback = true }, on_format
        #      end
        #   '';
        #   format_after_save = # Lua
        # ''
        #   function(bufnr)
        #     if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
        #       return
        #     end
        #
        #     if not slow_format_filetypes[vim.bo[bufnr].filetype] then
        #       return
        #     end
        #
        #     return { lsp_fallback = true }
        #   end
        # '';
        formatters_by_ft =
          {
            nix = [ "nixpkgs_fmt" ];
            bash = [ "shellcheck" ];
            # sh = [ "shellcheck" ];
            rust = [ "rustfmt" ];
            # c = [ "clang-format" ];
            javascript = [ "prettier" "prettierd" ];
            # Conform will run multiple formatters sequentially
            # Use a sub-list to run only the first available formatter
            # Use the "*" filetype to run formatters on all filetypes.
            "*" = [ "codespell" ];
            # Use the "_" filetype to run formatters on filetypes that don't
            # have other formatters configured.
            "_" = [ "trim_whitespace" ];
          };
        # formatters = {
        # };
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
  };


}
