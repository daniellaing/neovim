{
  plugins = {
    ts-context-commentstring.enable = true;

    comment-nvim = {
      enable = true;
      preHook = "require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()";
    };
  };
}
