return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- color schemes
  { import = "astrocommunity.colorscheme.catppuccin" },
  {
    -- further customize the options set by the community
    "catppuccin",
    opts = {
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
      term_colors = true,
      dim_inactive = { enabled = true, percentage = 0.25 },
      integrations = {
        nvimtree = false,
        ts_rainbow = false,
        aerial = true,
        dap = { enabled = true, enable_ui = true },
        mason = true,
        neotree = true,
        notify = true,
        semantic_tokens = true,
        symbols_outline = true,
        telescope = true,
        which_key = true,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = true,
        lsp_trouble = true,
        ts_rainbow2 = true,
        harpoon = true,
        gitsigns = true,
        treesitter = true,
      },
    },
  },
  -- { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  -- { import = "astrocommunity.colorscheme.nightfox-nvim" },
  -- { import = "astrocommunity.colorscheme.everforest" },

  -- visuals
  -- { import = "astrocommunity.color.tint-nvim" },
  -- { import = "astrocommunity.editing-support.zen-mode-nvim" },
  -- { import = "astrocommunity.color.twilight-nvim" },

  -- code completion
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.completion.codeium-vim" },

  -- editing support
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.editing-support.nvim-ts-rainbow2" },
  {
    -- further customize the options set by the community
    "nvim-treesitter/nvim-treesitter",
    opts = {
      rainbow = {
        -- list of languages you want to disable the plugin for
        disable = { "jsx", "cpp" },
      },
    },
  },
  { import = "astrocommunity.editing-support.neogen" },

  -- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  -- { import = "astrocommunity.git.git-blame-nvim" },
  -- { import = "astrocommunity.markdown-and-latex.glow-nvim" },
  -- { import = "astrocommunity.note-taking.obsidian-nvim" },
  -- { import = "astrocommunity.editing-support.refactoring-nvim"}

  -- motion
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.flit-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  -- { import = "astrocommunity.motion.mini-surround" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.motion.harpoon" },

  -- packs
  -- { import = "astrocommunity.pack.python" },
  -- { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.pack.bash" },

  -- others
  -- helping you establish good command workflow and habit
  -- { import = "astrocommunity.workflow.hardtime-nvim" },
  -- project picker with telescope support
  { import = "astrocommunity.project.project-nvim" },
}
