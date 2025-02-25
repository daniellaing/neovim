let
  tabwidth = 4;
  max_col = 120;
in {
  clipboard.providers.wl-copy.enable = true;

  globals = {
    mapleader = " ";
    tex_flavour = "latex";

    # NETRW
    netrw_liststyle = 0;
    netrw_winsize = 30;
    netrw_banner = 0;
  };

  opts = {
    # Numbers
    number = true;
    relativenumber = true;

    # Tabs
    tabstop = tabwidth;
    softtabstop = tabwidth;
    shiftwidth = 0; # 0 sets to same as tabstop
    expandtab = true;
    smartindent = true;

    # Search
    hlsearch = false; # Searches don't stay highlighted
    incsearch = true; # Show search matches so far
    inccommand = "split"; # Show effects of :s
    ignorecase = true; # Ignore case while searching
    smartcase = true; # Become case sensitive when a capital is searched

    # Splits
    splitright = true;

    # Swap and Undo files
    # TODO: Set undodir to .local/vim/undodir
    swapfile = false;
    undofile = true;

    # Appearance
    scrolloff = 5;
    list = false;
    listchars = "extends:›,precedes:‹,nbsp:␣,trail:·,eol:¬,tab:->";
    termguicolors = true;
    cursorline = true;
    cursorcolumn = true;
    foldcolumn = "auto";
    foldlevelstart = 99; # Start with all folds open
    signcolumn = "yes";
    conceallevel = 2;
    wrap = false;

    # Maps
    timeoutlen = 400;
    ttimeoutlen = 0;

    # Spelling
    spell = true;
    spelllang = "en_gb";

    # Formatting
    # TODO: Use formatprg and UNIX utility fmt
    colorcolumn = builtins.toString max_col;
    textwidth = max_col;

    # Other
    completeopt = ["menu" "menuone" "noselect" "noinsert"];
    encoding = "UTF-8";
    autowriteall = true;
  };
}
