return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- {
    -- "ggandor/leap.nvim",
    -- event = "BufRead",
    -- config = function()
      -- require("leap").add_default_mappings()
    -- end,
  -- },
  -- {
    -- "github/copilot.vim",
    -- event = "BufRead",
  -- },
  {
    "linux-cultist/venv-selector.nvim",
    opts = {},
    keys = { { "<leader>lv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" } },
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
  {
    "mtikekar/nvim-send-to-term",
    init = function() vim.g.send_disable_mapping = true end,
    keys = { "<Plug>Send", "<Plug>SendLine" },
    cmd = "SendHere",
  },
}
