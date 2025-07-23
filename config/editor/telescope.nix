{helpers, ...}: {
  # Dependency
  plugins.web-devicons.enable = true;
  plugins.telescope = {
    enable = true;
    extensions = {
      fzy-native = {
        enable = true;
        settings = {
          caseMode = "smart_case";
          fuzzy = true;
        };
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<Leader>b";
      action = helpers.mkRaw "function() require('telescope.builtin').buffers({ sort_mru=true; sort_lastused=true }) end";
      options = {
        silent = true;
        desc = "Show buffers";
      };
    }
    {
      mode = "n";
      key = "<Leader>/";
      action = helpers.mkRaw "require('telescope.builtin').live_grep";
      options = {
        silent = true;
        desc = "Live grep";
      };
    }
    {
      mode = "n";
      key = "<Leader>:";
      action = helpers.mkRaw "require('telescope.builtin').command_history";
      options = {
        silent = true;
        desc = "Command history";
      };
    }

    {
      mode = "n";
      key = "<Leader>fb";
      action = helpers.mkRaw "function() require('telescope.builtin').buffers({ sort_mru=true; sort_lastused=true }) end";
      options = {
        silent = true;
        desc = "Show buffers";
      };
    }
    {
      mode = "n";
      key = "<Leader>ff";
      action = helpers.mkRaw "require('telescope.builtin').find_files";
      options = {
        silent = true;
        desc = "Find files";
      };
    }
    {
      mode = "n";
      key = "<Leader>fF";
      action = helpers.mkRaw "function() require('telescope.builtin').find_files({ cwd = require('telescope.utils').buffer_dir() }) end";
      options = {
        silent = true;
        desc = "Find files (cwd)";
      };
    }
    {
      mode = "n";
      key = "<Leader>fc";
      action = helpers.mkRaw "function() vim.notify('Not implemented', vim.log.levels.ERROR) end";
      options = {
        silent = true;
        desc = "Find neovim config files";
      };
    }
    {
      mode = "n";
      key = "<Leader>fg";
      action = helpers.mkRaw "require('telescope.builtin').git_files";
      options = {
        silent = true;
        desc = "Find files (git)";
      };
    }
    {
      mode = "n";
      key = "<Leader>fr";
      action = helpers.mkRaw "require('telescope.builtin').oldfiles";
      options = {
        silent = true;
        desc = "Find recent files";
      };
    }
    {
      mode = "n";
      key = "<Leader>fR";
      action = helpers.mkRaw "function() require('telescope.builtin').oldfiles({ cwd = require('telescope.utils').buffer_dir() }) end";
      options = {
        silent = true;
        desc = "Find recent files (cwd)";
      };
    }

    {
      mode = "n";
      key = "<Leader>s\"";
      action = helpers.mkRaw "require('telescope.builtin').registers";
      options = {
        silent = true;
        desc = "Search registers";
      };
    }
    {
      mode = "n";
      key = "<Leader>sa";
      action = helpers.mkRaw "require('telescope.builtin').autocommands";
      options = {
        silent = true;
        desc = "Search autocommands";
      };
    }
    {
      mode = "n";
      key = "<Leader>sb";
      action = helpers.mkRaw "require('telescope.builtin').current_buffer_fuzzy_find";
      options = {
        silent = true;
        desc = "Fuzzy find in current buffer";
      };
    }
    {
      mode = "n";
      key = "<Leader>sc";
      action = helpers.mkRaw "require('telescope.builtin').command_history";
      options = {
        silent = true;
        desc = "Search command history";
      };
    }
    {
      mode = "n";
      key = "<Leader>sC";
      action = helpers.mkRaw "require('telescope.builtin').commands";
      options = {
        silent = true;
        desc = "Search commands";
      };
    }
    {
      mode = "n";
      key = "<Leader>sd";
      action = helpers.mkRaw "function() require('telescope.builtin').diagnostics({ bufnr=0 }) end";
      options = {
        silent = true;
        desc = "Search diagnostics (buffer)";
      };
    }
    {
      mode = "n";
      key = "<Leader>sD";
      action = helpers.mkRaw "require('telescope.builtin').diagnostics";
      options = {
        silent = true;
        desc = "Search diagnostics (workspace)";
      };
    }
    {
      mode = "n";
      key = "<Leader>sg";
      action = helpers.mkRaw "require('telescope.builtin').live_grep";
      options = {
        silent = true;
        desc = "Live grep";
      };
    }
    {
      mode = "n";
      key = "<Leader>sG";
      action = helpers.mkRaw "function() require('telescope.builtin').live_grep({ cwd = require('telescope.utils').buffer_dir() }) end";
      options = {
        silent = true;
        desc = "Live grep (cwd)";
      };
    }
    {
      mode = "n";
      key = "<Leader>sh";
      action = helpers.mkRaw "require('telescope.builtin').help_tags";
      options = {
        silent = true;
        desc = "Search help";
      };
    }
    {
      mode = "n";
      key = "<Leader>sH";
      action = helpers.mkRaw "require('telescope.builtin').highlights";
      options = {
        silent = true;
        desc = "Search highlights";
      };
    }
    {
      mode = "n";
      key = "<Leader>sk";
      action = helpers.mkRaw "require('telescope.builtin').keymaps";
      options = {
        silent = true;
        desc = "Search keymaps";
      };
    }
    {
      mode = "n";
      key = "<Leader>sm";
      action = helpers.mkRaw "require('telescope.builtin').marks";
      options = {
        silent = true;
        desc = "Search marks";
      };
    }
    {
      mode = "n";
      key = "<Leader>sM";
      action = helpers.mkRaw "require('telescope.builtin').man_pages";
      options = {
        silent = true;
        desc = "Search man pages";
      };
    }
    {
      mode = "n";
      key = "<Leader>so";
      action = helpers.mkRaw "require('telescope.builtin').vim_options";
      options = {
        silent = true;
        desc = "Search vim options";
      };
    }
    {
      mode = "n";
      key = "<Leader>sr";
      action = helpers.mkRaw "require('telescope.builtin').resume";
      options = {
        silent = true;
        desc = "Resume previous search";
      };
    }
    {
      mode = "n";
      key = "<Leader>sR";
      action = helpers.mkRaw "require('telescope.builtin').reloader";
      options = {
        silent = true;
        desc = "Search for module to reload";
      };
    }
    {
      mode = "n";
      key = "<Leader>ss";
      action = helpers.mkRaw "require('telescope.builtin').lsp_document_symbols";
      options = {
        silent = true;
        desc = "Search document symbols";
      };
    }
    {
      mode = "n";
      key = "<Leader>sS";
      action = helpers.mkRaw "require('telescope.builtin').lsp_dynamic_workspace_symbols";
      options = {
        silent = true;
        desc = "Search workspace symbols";
      };
    }

    {
      mode = "n";
      key = "<Leader>h";
      action = helpers.mkRaw ''
        function()
            vim.api.nvim_exec_autocmds("User", { pattern = "ColorSchemeLoad" })
            require("telescope.builtin").colorscheme()
        end
      '';
      options = {
        silent = true;
        desc = "Change colour scheme";
      };
    }
  ];
}
