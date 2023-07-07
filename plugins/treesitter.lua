return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        -- lua
        "lua",
        "luap",
        -- python
        "python",
        -- cpp
        "cpp",
        "cmake",
        "make",
        -- bash
        "bash",
        -- git
        "diff",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitignore",
        "gitcommit",
        -- docker
        "dockerfile",
        -- md
        "markdown",
        "markdown_inline",
        -- general
        "json", "yaml", "toml", "query",
        -- sql
        "sql",
      })
    end,
  },
  {
    "nvim-treesitter/playground",
    requires = { "nvim-treesitter/nvim-treesitter"},
    cmd = "TSPlaygroundToggle",
    config = function ()
      require("nvim-treesitter.configs").setup({
        playground = { enable = true }
      })
    end
  }
}
