{
  # Import all your configuration modules here
  imports = [
    # TODO: maeby better design for bufferline?
    ./bufferline.nix
    ./cmp.nix
    ./autocmd.nix
    # ./leetcode.nix
    # NOTE: still working on it
    # ./markdown.nix
    ./lazygit.nix
    ./helpview.nix
    ./codeium.nix
    ./dashboard.nix
    ./flash.nix
    ./conform.nix
    # ./tide.nix
    ./noice.nix
    ./term.nix
    ./todo.nix
    ./blanklne.nix
    # TODO: use signatures-vim then this, less bloated
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
    # ./custom/nix-opt.nix
    # ./nixhash.nix
    # TODO: add menu plugin
    # menu options: 
    # - todo menu from todo plugin (find in the pwd for desired comment)
    # - lazygit menu
    # - telescope marks
    # ./conmenu.nix
    # ./menu.nix
  ];
}
