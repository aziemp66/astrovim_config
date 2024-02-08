-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
        "gopls",
        "tsserver",
        "dockerls",
        "docker_compose_language_service",
        "html",
        "cssls",
        "cssmodules_ls",
        "tailwindcss",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "prettier",
        "stylua",
        "ast-grep",
        "oxlint",
        "goimports-reviser",
        "golines",
        "gomodifytags",
        "gotests",
        "gospel",
        "sonarlint-language-server",
        "staticcheck",
        "revive",
        "djlint",
        "nilaway",
        "trivy",
        "hadolint",
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "python",
        "delve",
        "firefox-debug-adapter",
      })
    end,
  },
}
