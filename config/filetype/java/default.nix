{
  lib,
  helpers,
  pkgs,
  ...
}: {
  # lsp.servers.jdtls.enable = true;
  plugins = {
    conform-nvim.settings.formatters_by_ft.java = ["google-java-format"];
    lint.lintersByFt.java = ["checkstyle"];

    jdtls = let
      inherit (pkgs.lib) hasSuffix;
      rootDirCmd = ''vim.fs.root(0, { ".git", "mvnw", "gradelw", "devshell.toml", ".svn"})'';
      java-debug = "${pkgs.vscode-extensions.vscjava.vscode-java-debug}/share/vscode/extensions/vscjava.vscode-java-debug";
      java-test = "${pkgs.vscode-extensions.vscjava.vscode-java-test}/share/vscode/extensions/vscjava.vscode-java-test";
      getJars = plugin: map (jar: "${plugin}/server/${jar}") (builtins.attrNames (builtins.readDir "${plugin}/server"));
      bundles = builtins.filter (jar:
        !(hasSuffix "com.microsoft.java.test.runner-jar-with-dependencies.jar" jar
          || hasSuffix "jacocoagent.jar" jar)) (builtins.concatLists [(getJars java-debug) (getJars java-test)]);
    in {
      enable = true;
      settings = {
        cmd = [
          (lib.getExe pkgs.jdt-language-server)
          "-data"
          (helpers.mkRaw ''vim.fn.stdpath 'cache' .. '/jdtls/' .. vim.fn.fnamemodify(${rootDirCmd}, ':t')'')
          "-configuration"
          (helpers.mkRaw ''vim.fn.stdpath 'cache' .. "/jdtls/config"'')
        ];

        init_options.bundles =
          helpers.mkRaw "{${builtins.concatStringsSep "," (builtins.map (b: "\"${b}\"")
              bundles)}}";
        root_dir = helpers.mkRaw rootDirCmd;
      };
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
