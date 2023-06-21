return {
    "AckslD/nvim-neoclip.lua",
    init = function() require('telescope').load_extension('neoclip') end,
    event = { "User AstroFile" },
    dependencies = {
      -- you'll need at least one of these
      {'nvim-telescope/telescope.nvim'},
      -- {'ibhagwan/fzf-lua'},
    },
    config = function() require("neoclip").setup() end,
}
