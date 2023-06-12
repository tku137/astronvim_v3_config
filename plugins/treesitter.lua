return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      -- "lua", -- lua
      "python", -- python
      "cpp", "cmake", "make", -- cpp
      -- "bash", -- bash
      "diff", "git_config", "git_rebase", "gitattributes", "gitignore", "gitcommit", -- git
      "dockerfile", -- docker
      -- "markdown", -- md
      "json", "yaml", "toml", -- general
      "sql", -- sql
    })
  end,
}
