-- return {}
return {
    "AckslD/nvim-neoclip.lua",
    event = { "User AstroFile" },
    dependencies = {
      -- you'll need at least one of these
      {'nvim-telescope/telescope.nvim'},
      -- {'ibhagwan/fzf-lua'},
    },
    config = function()
        require("neoclip").setup()
        require('telescope').load_extension('neoclip')
    end,
}
