{

  clipboard.providers.wl-copy = {
    enable = true;
  };
  extraConfigLua = ''
    local signs = { Error = "", Warn = "", Hint = "", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
  '';

  extraConfigVim = ''
    au BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$") && &filetype != "gitcommit" |
              \ execute("normal `\"") |
          \ endif

    cnoreabbrev h vert h
    cnoreabbrev m hide Man

 
  '';
  # autocmd BufEnter * if &filetype == 'help' | wincmd L | wincmd _ | endif
  # command! -nargs=1 M execute 'hide Man' <q-args>
  colorschemes = {
    # tokyonight.enable = true;
    # catppuccin.enable = true;
    # nord.enable = true;
    # onedark.enable = true;
    kanagawa.enable = true;
  };
  opts = {
    expandtab = true;
    shiftwidth = 2;
    tabstop = 2;
    # spell = true;
    # spelllang = "en_us";
    splitright = true; # might be split="right";
    # pumblend = 100;
    # winblend = 100;
    incsearch = true; # Select items found in search
    hlsearch = true; # Highlight searches by default
    ignorecase = true; # Ignore case when searching
    smartcase = true; # Unless you type a capital
    number = true;
    relativenumber = false;
    showmode = false;
    # nofoldenable = false;
    undofile = true;
    breakindent = true; # Keep indentation for wrapped lines
    # autoindent = true; # Enable auto-indentation
    # smartindent = true; # Enable smart-indentation
    # softtabstop = 0; # Use hard tabs "alwaysShowBufferline"
    swapfile = false; # Enable swap files
    clipboard = "unnamedplus";
    foldmethod = "expr";

    foldexpr = "nvim_treesitter#foldexpr()";
    foldlevel = 20;
    # foldenable = false;
    fillchars = {
      eob = " ";
    };
  };
}
