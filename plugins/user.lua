return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function() require("lsp_signature").setup() end,
  -- },
  -- {
  --   "ggandor/leap.nvim",
  --   event = "BufRead",
  --   config = function() require("leap").add_default_mappings() end,
  -- },
  -- {
  --   "github/copilot.vim",
  --   event = "BufRead",
  -- },
  {
    "linux-cultist/venv-selector.nvim",
    opts = {},
    keys = { { "<leader>lv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" } },
  },
  {
    "mfussenegger/nvim-dap-python",
    dependencies = { "mfussenegger/nvim-dap" },
    -- NOTE: ft: lazy-load on filetype
    ft = "python",
    event = "User AstroFile",
    config = function() require("dap-python").setup("python", {}) end,
    -- config = function() require("dap-python").setup('~/.virtualenvs/debugpy/bin/python') end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    dependencies = { "mfussenegger/nvim-dap" },
    -- NOTE: ft: lazy-load on filetype
    ft = "python",
    event = "User AstroFile",
    config = function() require("nvim-dap-virtual-text").setup() end,
    -- config = function() require("dap-python").setup('~/.virtualenvs/debugpy/bin/python') end,
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
  -- {
  --   "mtikekar/nvim-send-to-term",
  --   init = function() vim.g.send_disable_mapping = true end,
  --   keys = { "<Plug>Send", "<Plug>SendLine" },
  --   cmd = "SendHere",
  -- },
  -- {
  --   "AckslD/nvim-neoclip.lua",
  --   init = function() require('telescope').load_extension('neoclip') end,
  --   event = { "User AstroFile" },
  --   dependencies = {
  --     -- you'll need at least one of these
  --     {'nvim-telescope/telescope.nvim'},
  --     -- {'ibhagwan/fzf-lua'},
  --   },
  --   config = function() require("neoclip").setup() end,
  -- },
}
