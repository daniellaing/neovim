{
  plugins.nvim-cmp = {
    enable = true;
    autoEnableSources = true;
    sources = [
      { name = "nvim_lsp"; }
      { name = "luasnip"; }
      { name = "nvim_lsp_signature_help"; }
      { name = "nvim_lua"; }
      { name = "path"; }
      { name = "buffer"; keywordLength = 5; }
    ];
    experimental = { ghost_text = true; };
    snippet.expand = "luasnip";
    mapping = {
      "<C-N>" = "cmp.mapping.select_next_item()";
      "<C-P>" = "cmp.mapping.select_prev_item()";
      "<C-E>" = "cmp.mapping.abort()";
      "<C-Y>" = "cmp.mapping.confirm({ select = true, })";
      "<C-Space>" = "cmp.mapping.complete()";
      "<C-L>" = ''
        cmp.mapping(function(fallback)
            local ls = require('luasnip')
            if ls.expand_or_jumpable() then
                ls.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" })
      '';
      "<C-H>" = ''
        cmp.mapping(function(fallback)
            local ls = require('luasnip')
            if ls.jumpable(-1) then
                ls.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" })
      '';
      "<C-K>" = ''
        cmp.mapping(function(fallback)
            local ls = require('luasnip')
            if ls.choice_active() then
                ls.change_choice()
            else
                fallback()
            end
        end, { "i", "s" })
      '';
    };
    # TODO: Add icons
  };
}
