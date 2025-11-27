{
  lib,
  pkgs,
  ...
}: {
  lsp.servers.lua_ls.enable = true;
  plugins = {
    conform-nvim.settings.formatters_by_ft.lua = ["stylua"];
    lint.lintersByFt.lua = ["luacheck"];
  };
  extraPackages = [pkgs.stylua pkgs.luajitPackages.luacheck];

  autoCmd = [
    {
      event = "FileType";
      desc = "Set lua specific configuration";
      group = "dlaing";
      pattern = "lua";
      callback = lib.nixvim.mkRaw ''
        function()
          vim.keymap.set('n', '<Leader>x', function()
            vim.cmd("write")
            vim.cmd('vsplit | term nvim -l %')
          end, { buffer = true })
        end
      '';
    }
  ];
}
