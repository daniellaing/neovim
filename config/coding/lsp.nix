{lib, ...}: {
  lsp = {
    inlayHints.enable = true;
    servers."*".settings = {
      root_markers = [".git" ".svn"];
      capabilities.textDocument.semanticTokens.multilineTokenSupport = true;
    };
  };

  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
    };
    lspkind.enable = true;
  };

  # ---   Keymaps   ---
  lsp.keymaps = [
    # TODO: <M-d> opens floating terminal
    {
      mode = ["n" "s" "o"];
      key = "K";
      action = lib.mkLuaInline ''function() vim.lsp.buf.hover({border="rounded", title = " hover "}) end'';
      options.desc = "Show documentation";
    }
    {
      key = "gd";
      lspBufAction = "definition";
      options.desc = "Go to definition";
    }
    {
      key = "gD";
      lspBufAction = "declaration";
      options.desc = "Go to declaration";
    }
    {
      key = "gy";
      lspBufAction = "type_definition";
      options.desc = "Go to type definition";
    }
    {
      key = "gr";
      lspBufAction = "references";
      options.desc = "Find references";
    }
    {
      key = "gI";
      lspBufAction = "implementation";
      options.desc = "Find implementations";
    }
    {
      key = "<Leader>ca";
      lspBufAction = "code_action";
      options.desc = "Code action";
    }
    {
      key = "<Leader>cr";
      lspBufAction = "rename";
      options.desc = "Rename symbol";
    }
    {
      key = "<Leader>ci";
      lspBufAction = "incoming_calls";
      options.desc = "Show incoming calls";
    }
    {
      key = "<Leader>co";
      lspBufAction = "outgoing_calls";
      options.desc = "Show outgoing calls";
    }
    {
      key = "<Leader>d";
      action = lib.mkLuaInline ''function() vim.diagnostic.open_float({border="rounded"}) end'';
      options.desc = "Show diagnostics on current line";
    }
    {
      key = "]d";
      action = lib.mkLuaInline ''function() vim.diagnostic.jump({count=1, float={border="rounded"}}) end'';
      options.desc = "Jump to next diagnostic";
    }
    {
      key = "[d";
      action = lib.mkLuaInline ''function() vim.diagnostic.jump({count=-1, float={border="rounded"}}) end'';
      options.desc = "Jump to previous diagnostic";
    }
    {
      key = "]w";
      action = lib.mkLuaInline ''function() vim.diagnostic.jump({count=1, severity=vim.diagnostic.severity.WARNING, float={border="rounded"}}) end'';
      options.desc = "Jump to next warning";
    }
    {
      key = "[w";
      action = lib.mkLuaInline ''function() vim.diagnostic.jump({count=-1, severity=vim.diagnostic.severity.WARNING, float={border="rounded"}}) end'';
      options.desc = "Jump to previous warning";
    }
    {
      key = "]e";
      action = lib.mkLuaInline ''function() vim.diagnostic.jump({count=1, severity=vim.diagnostic.severity.ERROR, float={border="rounded"}}) end'';
      options.desc = "Jump to next error";
    }
    {
      key = "[e";
      action = lib.mkLuaInline ''function() vim.diagnostic.jump({count=-1, severity=vim.diagnostic.severity.ERROR, float={border="rounded"}}) end'';
      options.desc = "Jump to previous error";
    }
  ];
}
