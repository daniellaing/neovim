{
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native = {
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
      action = "function() require('telescope.builtin').buffers({ sort_mru=true; sort_lastused=true }) end";
      lua = true;
      options = {
        silent = true;
        desc = "Show buffers";
      };
    }
    {
      mode = "n";
      key = "<Leader>/";
      action = "require('telescope.builtin').live_grep";
      lua = true;
      options = {
        silent = true;
        desc = "Live grep";
      };
    }
    {
      mode = "n";
      key = "<Leader>:";
      action = "require('telescope.builtin').command_history";
      lua = true;
      options = {
        silent = true;
        desc = "Command history";
      };
    }

    {
      mode = "n";
      key = "<Leader>fb";
      action = "function() require('telescope.builtin').buffers({ sort_mru=true; sort_lastused=true }) end";
      lua = true;
      options = {
        silent = true;
        desc = "Show buffers";
      };
    }
    {
      mode = "n";
      key = "<Leader>ff";
      action = "require('telescope.builtin').find_files";
      lua = true;
      options = {
        silent = true;
        desc = "Find files";
      };
    }
    {
      mode = "n";
      key = "<Leader>fF";
      action = "function() require('telescope.builtin').find_files({ cwd = require('telescope.utils').buffer_dir() }) end";
      lua = true;
      options = {
        silent = true;
        desc = "Find files (cwd)";
      };
    }
    {
      mode = "n";
      key = "<Leader>fc";
      action = "function() vim.notify('Not implemented', vim.log.levels.ERROR) end";
      lua = true;
      options = {
        silent = true;
        desc = "Find neovim config files";
      };
    }
    {
      mode = "n";
      key = "<Leader>fg";
      action = "require('telescope.builtin').git_files";
      lua = true;
      options = {
        silent = true;
        desc = "Find files (git)";
      };
    }
    {
      mode = "n";
      key = "<Leader>fr";
      action = "require('telescope.builtin').oldfiles";
      lua = true;
      options = {
        silent = true;
        desc = "Find recent files";
      };
    }
    {
      mode = "n";
      key = "<Leader>fR";
      action = "function() require('telescope.builtin').oldfiles({ cwd = require('telescope.utils').buffer_dir() }) end";
      lua = true;
      options = {
        silent = true;
        desc = "Find recent files (cwd)";
      };
    }

    {
      mode = "n";
      key = "<Leader>s\"";
      action = "require('telescope.builtin').registers";
      lua = true;
      options = {
        silent = true;
        desc = "Search registers";
      };
    }
    {
      mode = "n";
      key = "<Leader>sa";
      action = "require('telescope.builtin').autocommands";
      lua = true;
      options = {
        silent = true;
        desc = "Search autocommands";
      };
    }
    {
      mode = "n";
      key = "<Leader>sb";
      action = "require('telescope.builtin').current_buffer_fuzzy_find";
      lua = true;
      options = {
        silent = true;
        desc = "Fuzzy find in current buffer";
      };
    }
    {
      mode = "n";
      key = "<Leader>sc";
      action = "require('telescope.builtin').command_history";
      lua = true;
      options = {
        silent = true;
        desc = "Search command history";
      };
    }
    {
      mode = "n";
      key = "<Leader>sC";
      action = "require('telescope.builtin').commands";
      lua = true;
      options = {
        silent = true;
        desc = "Search commands";
      };
    }
    {
      mode = "n";
      key = "<Leader>sd";
      action = "function() require('telescope.builtin').diagnostics({ bufnr=0 }) end";
      lua = true;
      options = {
        silent = true;
        desc = "Search diagnostics (buffer)";
      };
    }
    {
      mode = "n";
      key = "<Leader>sD";
      action = "require('telescope.builtin').diagnostics";
      lua = true;
      options = {
        silent = true;
        desc = "Search diagnostics (workspace)";
      };
    }
    {
      mode = "n";
      key = "<Leader>sg";
      action = "require('telescope.builtin').live_grep";
      lua = true;
      options = {
        silent = true;
        desc = "Live grep";
      };
    }
    {
      mode = "n";
      key = "<Leader>sG";
      action = "function() require('telescope.builtin').live_grep({ cwd = require('telescope.utils').buffer_dir() }) end";
      lua = true;
      options = {
        silent = true;
        desc = "Live grep (cwd)";
      };
    }
    {
      mode = "n";
      key = "<Leader>sh";
      action = "require('telescope.builtin').help_tags";
      lua = true;
      options = {
        silent = true;
        desc = "Search help";
      };
    }
    {
      mode = "n";
      key = "<Leader>sH";
      action = "require('telescope.builtin').highlights";
      lua = true;
      options = {
        silent = true;
        desc = "Search highlights";
      };
    }
    {
      mode = "n";
      key = "<Leader>sk";
      action = "require('telescope.builtin').keymaps";
      lua = true;
      options = {
        silent = true;
        desc = "Search keymaps";
      };
    }
    {
      mode = "n";
      key = "<Leader>sm";
      action = "require('telescope.builtin').marks";
      lua = true;
      options = {
        silent = true;
        desc = "Search marks";
      };
    }
    {
      mode = "n";
      key = "<Leader>sM";
      action = "require('telescope.builtin').man_pages";
      lua = true;
      options = {
        silent = true;
        desc = "Search man pages";
      };
    }
    {
      mode = "n";
      key = "<Leader>so";
      action = "require('telescope.builtin').vim_options";
      lua = true;
      options = {
        silent = true;
        desc = "Search vim options";
      };
    }
    {
      mode = "n";
      key = "<Leader>sr";
      action = "require('telescope.builtin').resume";
      lua = true;
      options = {
        silent = true;
        desc = "Resume previous search";
      };
    }
    {
      mode = "n";
      key = "<Leader>sR";
      action = "require('telescope.builtin').reloader";
      lua = true;
      options = {
        silent = true;
        desc = "Search for module to reload";
      };
    }
    {
      mode = "n";
      key = "<Leader>ss";
      action = "require('telescope.builtin').lsp_document_symbols";
      lua = true;
      options = {
        silent = true;
        desc = "Search document symbols";
      };
    }
    {
      mode = "n";
      key = "<Leader>sS";
      action = "require('telescope.builtin').lsp_dynamic_workspace_symbols";
      lua = true;
      options = {
        silent = true;
        desc = "Search workspace symbols";
      };
    }
  ];
}
