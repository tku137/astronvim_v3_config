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
}
