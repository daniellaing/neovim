{
  helpers,
  pkgs,
  ...
}: {
  extraConfigLuaPre = let
    java-debug = "${pkgs.vscode-extensions.vscjava.vscode-java-debug}/share/vscode/extensions/vscjava.vscode-java-debug/server";
    java-test = "${pkgs.vscode-extensions.vscjava.vscode-java-test}/share/vscode/extensions/vscjava.vscode-java-test/server";
  in ''
    _M.jdtls = {}
    _M.jdtls.bundles = {
        vim.fn.glob("${java-debug}" .. "/*.jar"),
    }

    local java_test_bundle = vim.split(vim.fn.glob("${java-test}" .. "/*.jar", true), "\n")

    if java_test_bundle[1] ~= "" then
        vim.list_extend(_M.jdtls.bundles, java_test_bundle)
    end
  '';

  plugins = {
    # lsp.servers.jdtls.enable = true;
    conform-nvim.settings.formatters_by_ft.java = ["google-java-format"];
    lint.lintersByFt.java = ["checkstyle"];

    nvim-jdtls = let
      rootDirCmd = ''vim.fs.root(0, { ".git", "mvnw", "gradelw", "devshell.toml"})'';
    in {
      enable = true;
      configuration = helpers.mkRaw ''vim.fn.stdpath 'cache' .. "/jdtls/config"'';
      data = helpers.mkRaw ''vim.fn.stdpath 'cache' .. '/jdtls/' .. vim.fn.fnamemodify(${rootDirCmd}, ':t')'';
      initOptions.bundles =
        helpers.mkRaw ''_M.jdtls.bundles'';
      rootDir = helpers.mkRaw rootDirCmd;
    };

    dap.configurations.java = [
      {
        type = "java";
        request = "launch";
        name = "Debug (Attach) - Remote";
        hostName = "127.0.0.1";
        port = 5005;
      }
    ];
  };

  extraPackages = [
    pkgs.google-java-format
    pkgs.checkstyle
    pkgs.vscode-extensions.vscjava.vscode-java-debug
    pkgs.vscode-extensions.vscjava.vscode-java-test
  ];

  extraFiles."luasnippets/java.lua".source = ./snippets.lua;

  autoCmd = [
    {
      event = "FileType";
      desc = "Set tab size to 2 for java files";
      group = "dlaing";
      pattern = "java";
      callback = helpers.mkRaw ''
        function()
            vim.opt_local.tabstop = 2
            vim.opt_local.softtabstop = 2
        end
      '';
    }
  ];
}
