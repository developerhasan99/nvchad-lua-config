local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "html-lsp",
        "typescript-language-server"
      }
    }
  },
  {
    "neovim/nvim-lspconfig",

    dependencies = {
       "jose-elias-alvarez/null-ls.nvim",
       config = function()
         require "custom.configs.null-ls"
       end,
     },

    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make",
    config = function ()
      require "custom.configs.telescope"
    end
  }
}

return plugins
