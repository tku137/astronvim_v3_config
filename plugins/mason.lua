-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        -- lua
        "lua_ls",
        -- python
        "ruff_lsp",
        "pyright",
        -- cpp
        "clangd",
        -- bash
        "bashls",
        -- markdown
        "marksman",
        -- json
        -- "jsonls",
        -- yaml
        -- "yamlls",
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
        -- lua
        "stylua",
        "luacheck",
        --python
        -- "ruff",
        "black",
        -- cpp
        "cpplint",
        "clang-format",
        -- bash
        "shellcheck",
        "shfmt",
        -- markdown
        -- "markdownlint",
        -- json
        -- "jsonlint",
        -- yaml
        -- "yamllint",
        "prettierd", -- markdown, json, yaml
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        -- python
        "python",
        -- cpp
        "cppdbg",
        -- bash
        -- "bash",
      })
    end,
  },
}
