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
        -- "lua_ls",
        -- python
        -- "ruff_lsp",
        -- "pyright",
        -- cpp
        -- "clangd",
        -- bash
        -- "bashls",
        -- markdown
        -- "marksman",
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
        -- "stylua",
        -- "luacheck",
        --python
        -- "ruff",
        -- "black",
        -- cpp
        -- "cpplint",
        -- "clang-format",
        -- bash
        -- "shellcheck",
        -- "shfmt",
        -- markdown
        -- "markdownlint",
        -- json
        -- "jsonlint",
        -- yaml
        -- "yamllint",
        -- markdown, json, yaml
        -- "prettierd",
      })
    end,
  },
  -- {
  --   "jay-babu/mason-nvim-dap.nvim",
  --   -- overrides `require("mason-nvim-dap").setup(...)`
  --   opts = function(_, opts)
  --     -- add more things to the ensure_installed table protecting against community packs modifying it
  --     opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
  --       -- python
  --       -- "python",
  --       -- cpp
  --       -- "cppdbg",
  --       -- bash
  --       -- "bash",
  --     })
  --     -- if not opts.handlers then opts.handlers = {} end
  --     -- opts.handlers.python = function() end -- make sure python doesn't get set up by mason-nvim-dap, it's being set up by nvim-dap-python
  --     -- below working example on custom debug launch, but its encouraged to use nvim-dap-python instead
  --     opts.handlers = {
  --       python = function(config)
  --         config.configurations = {
  --           {
  --             type = "python",
  --             request = "launch",
  --             name = "Python: Debug file with justMyCode=false",
  --             program = "${file}",
  --             justMyCode = false,
  --             -- console = "integratedTerminal",
  --             -- pythonPath = function() return "python" end,
  --           },
  --         }
  --         require("mason-nvim-dap").default_setup(config) -- don't forget this!
  --       end,
  --     }
  --   end,
  -- },
}
