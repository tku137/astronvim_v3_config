return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- color schemes
  {
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
          flash = false,
        },
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
  { import = "astrocommunity.split-and-window.edgy-nvim" },
  -- { import = "astrocommunity.split-and-window.windows-nvim" },
  {
    { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
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
  },

  -- code completion
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  -- { import = "astrocommunity.completion.codeium-vim" },

  -- editing support
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.editing-support.neogen" },
  -- { import = "astrocommunity.debugging.telescope-dap-nvim" },
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  { import = "astrocommunity.debugging.nvim-dap-repl-highlights" },
  { import = "astrocommunity.debugging.persistent-breakpoints-nvim" },
  { import = "astrocommunity.programming-language-support.csv-vim" },
  { import = "astrocommunity.editing-support.nvim-devdocs" },

  { import = "astrocommunity.register.nvim-neoclip-lua" },

  -- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  -- { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.git.neogit" },

  { import = "astrocommunity.markdown-and-latex.glow-nvim" },
  { import = "astrocommunity.markdown-and-latex.peek-nvim" },
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  -- { import = "astrocommunity.editing-support.refactoring-nvim"}
  { import = "astrocommunity.editing-support.telescope-undo-nvim" },

  -- motion
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.mini-surround" },
  -- { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.motion.harpoon" },

  -- packs
  { import = "astrocommunity.pack.python" },
  -- {
  --   { import = "astrocommunity.pack.python" },
  --   {
  --     "mfussenegger/nvim-dap-python",
  --     dependencies = "mfussenegger/nvim-dap",
  --     config = function(_, opts)
  --       local path = require("mason-registry").get_package("debugpy"):get_install_path() .. "/venv/bin/python"
  --       require("dap-python").setup(path, opts)
  --       table.insert(require('dap').configurations.python, {
  --         type = 'python',
  --         request = 'launch',
  --         name = 'Launch file with justMyCode=false',
  --         program = '${file}',
  --         -- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
  --         justMyCode = false,
  --       })
  --     end,
  --   }
  -- },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.bash" },

  -- note taking
  -- { import = "astrocommunity.note-taking.neorg" },
  -- { import = "astrocommunity.note-taking.obsidian-nvim" },

  -- others
  -- helping you establish good command workflow and habit
  { import = "astrocommunity.workflow.hardtime-nvim" },
  -- {
  --   { import = "astrocommunity.workflow.hardtime-nvim" },
  --   {
  --     "hardtime.nvim",
  --     opts = {
  --       disabled_filetypes = {
  --         "qf",
  --         "netrw",
  --         "NvimTree",
  --         "lazy",
  --         "mason",
  --         "prompt",
  --         "TelescopePrompt",
  --         "noice",
  --         "notify",
  --         "neo-tree",
  --         "dap-repl",
  --         "dapui_console",
  --         "dapui_scopes",
  --         "dapui_breakpoints",
  --         "dapui_stacks",
  --         "dapui_watches",
  --       }
  --     }
  --   },
  -- },
  -- project picker with telescope support
  { import = "astrocommunity.project.project-nvim" },
  { import = "astrocommunity.project.nvim-spectre" },
  -- { import = "astrocommunity.terminal-integration.vim-tmux-yank" },
}
