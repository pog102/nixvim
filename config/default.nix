{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./cmp.nix
    ./autocmd.nix
    # ./leetcode.nix
    # NOTE: stilll testing
    # ./markdown.nix
    ./lazygit.nix
    ./helpview.nix
    ./codeium.nix
    ./dashboard.nix
    ./conform.nix
    ./noice.nix
    ./term.nix
    ./todo.nix
    ./blanklne.nix
    # ./marks.nix
    ./treesitter.nix
    ./lsp.nix
    ./tree-context.nix
    ./options.nix
    ./keymaps.nix
    ./autopairs.nix
    ./gitsigns.nix
    ./lint.nix
    ./telescope.nix
    ./luasnip.nix
    ./lualine.nix
    # ./skel.nix
    ./telescope-code-actions.nix
    ./skel-nvim.nix
    # TODO: add menu plugin
    # menu options: 
    # - todo menu from todo plugin (find in the pwd for desired comment)
    # - lazygit menu
  ];
}
