local prefix = "<leader>R"

return {
  "ThePrimeagen/refactoring.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter", "nvim-telescope/telescope-dap.nvim" },
  cmd = { "Refactor" },
  opts = { function() require("telescope").load_extension "dap" end },
  keys = {
    {
      prefix .. "e",
      [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]],
      { silent = true, expr = false },
      mode = {
        "v",
        "x",
      },
      desc = "Extract Function",
    },
    {
      prefix .. "f",
      [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]],
      { silent = true, expr = false },
      mode = {
        "v",
        "x",
      },
      desc = "Extract Function To File",
    },
    {
      prefix .. "v",
      [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]],
      { silent = true, expr = false },
      mode = {
        "v",
        "x",
      },
      desc = "Extract Variable",
    },
    {
      prefix .. "i",
      [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]],
      { silent = true, expr = false },
      mode = {
        "n",
        "v",
        "x",
      },
      desc = "Inline Variable",
    },
    {
      prefix .. "b",
      function() require("refactoring").refactor "Extract Block" end,
      { silent = true, expr = false },
      mode = {
        "n",
      },
      desc = "Extract Block",
    },
    {
      prefix .. "B",
      function() require("refactoring").refactor "Extract Block To File" end,
      { silent = true, expr = false },
      mode = {
        "n",
      },
      desc = "Extract Block To File",
    },
    {
      prefix .. "r",
      -- function() require("refactoring").select_refactor() end,
      function() require('telescope').extensions.refactoring.refactors() end,
      { silent = true, expr = false },
      mode = {
        "n",
        "x",
      },
      desc = "Select Refactor",
    },
    {
      prefix .. "p",
      function() require("refactoring").debug.printf { below = false } end,
      mode = { "n" },
      desc = "Debug: Print Function",
    },
    {
      prefix .. "d",
      function() require("refactoring").debug.print_var { normal = true, below = false } end,
      mode = { "n" },
      desc = "Debug: Print Variable",
    },
    {
      prefix .. "d",
      function() require("refactoring").debug.print_var { below = false } end,
      mode = { "v" },
      desc = "Debug: Print Variable",
    },
    {
      prefix .. "c",
      function() require("refactoring").debug.cleanup {} end,
      mode = { "n" },
      desc = "Debug: Clean Up",
    },
  },
}
