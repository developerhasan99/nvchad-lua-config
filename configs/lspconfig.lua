local config = require("plugins.configs.lspconfig")
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    prefereces = {
      disableSuggestions = true,
    }
  }
}

lspconfig.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.emmet_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.intelephense.setup {
  cmd = { 'intelephense', '--stdio' },
  filetypes = { 'php' },
  root_dir = function()
    return vim.fn.getcwd()
  end,
  settings = {
    intelephense = {
      stubs = {
          "bcmath",
          "bz2",
          "Core",
          "curl",
          "date",
          "dom",
          "fileinfo",
          "filter",
          "gd",
          "gettext",
          "hash",
          "iconv",
          "imap",
          "intl",
          "json",
          "libxml",
          "mbstring",
          "mcrypt",
          "mysql",
          "mysqli",
          "password",
          "pcntl",
          "pcre",
          "PDO",
          "pdo_mysql",
          "Phar",
          "readline",
          "regex",
          "session",
          "SimpleXML",
          "sockets",
          "sodium",
          "standard",
          "superglobals",
          "tokenizer",
          "xml",
          "xdebug",
          "xmlreader",
          "xmlwriter",
          "yaml",
          "zip",
          "zlib",
          "wordpress-stubs",
          "woocommerce-stubs",
          "acf-pro-stubs",
          "wordpress-globals",
          "wp-cli-stubs",
          "genesis-stubs",
          "polylang-stubs"
        },
        environment = {
          includePaths = {'/home/mehedi/.config/composer/vendor/php-stubs/', '/home/mehedi/.config/composer/vendor/wpsyntex/'}
        },
        files = {
          maxSize = 5000000;
        };
      };
    },
  capabilities = capabilities,
  on_attach = on_attach,
}
