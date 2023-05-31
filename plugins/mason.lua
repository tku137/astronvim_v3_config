-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        -- "lua_ls", -- lua
        -- "ruff_lsp", -- python
        "clangd", -- cpp
        -- "bashls", -- bash
        -- "marksman", -- markdown
        -- "jsonls", -- json
        -- "yamlls", -- yaml
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
        -- "prettier",
        -- "stylua", -- lua
        -- "ruff", "black", -- python
        "cpplint", "clang-format", -- cpp
        -- "shellcheck", "beautysh", -- bash
        -- "markdownlint", -- markdown
        -- "jsonlint", -- json
        -- "yamllint", -- yaml
        -- "prettier", -- markdown, json, yaml
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        -- "python",
        -- "python", -- python
        -- "cppdbg", -- cpp
      })
    end,
  },
}
