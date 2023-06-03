return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- color schemes
  { import = "astrocommunity.colorscheme.catppuccin" },
  { -- further customize the options set by the community
    "catppuccin",
    opts = {
      integrations = {
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = true,
        lsp_trouble = true,
        ts_rainbow2 = true,
        harpoon = true
      },
    },
  },
  -- { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  -- { import = "astrocommunity.colorscheme.nightfox" },
  -- { import = "astrocommunity.colorscheme.everforest" },

  -- code completion
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  -- { import = "astrocommunity.completion.codeium-vim" }, 

  -- editing support
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  -- { import = "astrocommunity.git.git-blame-nvim" },
  -- { import = "astrocommunity.markdown-and-latex.glow-nvim" },
  -- { import = "astrocommunity.note-taking.obsidian-nvim" },
  -- { import = "astrocommunity.editing-support.refactoring-nvim"}

  -- motion
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  -- { import = "astrocommunity.motion.mini-surround" },
  -- { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.motion.harpoon" },

  -- packs
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.bash" },

  -- others
  -- helping you establish good command workflow and habit
  -- { import = "astrocommunity.workflow.hardtime-nvim" },
}
