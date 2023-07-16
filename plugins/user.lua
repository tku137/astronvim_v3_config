return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  {
    "linux-cultist/venv-selector.nvim",
    opts = {},
    keys = { { "<leader>lv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" } },
  },
  {
    "mfussenegger/nvim-dap-python",
    dependencies = "mfussenegger/nvim-dap",
    ft = "python", -- NOTE: ft: lazy-load on filetype
    config = function(_, opts)
      local path = require("mason-registry").get_package("debugpy"):get_install_path() .. "/venv/bin/python"
      require("dap-python").setup(path, opts)
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    dependencies = { "mfussenegger/nvim-dap", "nvim-treesitter/nvim-treesitter" },
    -- NOTE: ft: lazy-load on filetype
    ft = "python",
    event = "User AstroFile",
    opts = {
      commented = true,
      enabled = true,
      enabled_commands = true,
    },
    -- config = function() require("nvim-dap-virtual-text").setup() end,
    -- config = function() require("dap-python").setup('~/.virtualenvs/debugpy/bin/python') end,
  },
  {
    "LiadOz/nvim-dap-repl-highlights",
    dependencies = { "mfussenegger/nvim-dap" },
    -- NOTE: ft: lazy-load on filetype
    ft = "python",
    event = "User AstroFile",
    config = function()
      require('nvim-dap-repl-highlights').setup()
      require('nvim-treesitter.configs').setup {
        highlight = {
          enable = true,
        },
        ensure_installed = { 'dap_repl' },
      }
    end,
  },
  -- {
  --   "jupyter-vim/jupyter-vim",
  --   ft = { "pyhon", "julia" },
  --   config = function()
  --     require("astronvim.utils").set_mappings {
  --       n = {
  --         ["<leader>J"] = { "<cmd>JupyterConnect<cr>", desc = "Connect to Jupyter" },
  --         ["<leader>j"] = { "<Plug>JupyterRunTextObj", desc = "Send to Jupyter" },
  --       },
  --       v = {
  --         ["<leader>j"] = { "<Plug>JupyterRunVisual", desc = "Send to Jupyter" },
  --       },
  --     }
  --   end,
  -- },
}
