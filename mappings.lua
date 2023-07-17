-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

-- local astro_utils = require "astronvim.utils"

return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- better buffer navigation
    -- sets shift+l/h to switch buffers with option of a count before the command
    ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },

    -- Tab Mappings
    ["<leader>Tn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>Tc"] = { "<cmd>tabclose<cr>", desc = "Close tab" },
    ["<leader>Th"] = { "<cmd>tabprevious<cr>", desc = "Left tab" },
    ["<leader>Tl"] = { "<cmd>tabnext<cr>", desc = "Right tab" },
    -- a table with the `name` key will register with which-key if it's available
    -- this an easy way to add menu titles in which-key
    ["<leader>T"] = { name = "󰓩 Tabs" },

    -- open dashboard when no more buffers open
    ["<leader>c"] = {
      function()
        local bufs = vim.fn.getbufinfo { buflisted = true }
        require("astronvim.utils.buffer").close(0)
        if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
      end,
      desc = "Close buffer",
    },

    -- Codeium
    -- ["<leader>;;"] = {
    --   function()
    --     vim.cmd.Codeium(vim.g.codeium_enabled == 0 and "Enable" or "Disable")
    --     astro_utils.notify("Codeium " .. (vim.g.codeium_enabled == 0 and "Disabled" or "Enabled"))
    --   end,
    --   desc = "Toggle Global",
    -- },
    -- ["<leader>;b"] = {
    --   function()
    --     vim.cmd.Codeium(vim.b.codeium_enabled == 0 and "EnableBuffer" or "DisableBuffer")
    --     astro_utils.notify("Codeium (buffer) " .. (vim.b.codeium_enabled == 0 and "Disabled" or "Enabled"))
    --   end,
    --   desc = "Toggle Buffer",
    -- },
    -- ["<leader>;a"] = {
    --   function() return vim.fn["codeium#Accept"]() end,
    --   desc = "Insert Suggestion",
    -- },
    -- ["<leader>;k"] = {
    --   function() return vim.fn["codeium#CycleCompletions"](1) end,
    --   desc = "Next Suggestion",
    -- },
    -- ["<leader>;j"] = {
    --   function() return vim.fn["codeium#CycleCompletions"](-1) end,
    --   desc = "Previous Suggestion",
    -- },
    -- ["<leader>;x"] = {
    --   function() return vim.fn["codeium#Clear"]() end,
    --   desc = "Clear Current Suggestion",
    -- },
    -- ["<leader>;m"] = {
    --   function() return vim.fn["codeium#Complete"]() end,
    --   desc = "Manually Trigger Suggestion",
    -- },
    -- ["<leader>;"] = { desc = "󰧑 AI Assistant" },


    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- Copy/paste with system clipboard
    ["gy"] = { '"+y', desc = "Copy to system clipboard" },
    ["gY"] = { '"+y$', desc = "Yank to system clipboard" },
    ["gp"] = { '"+p', desc = "Paste from system clipboard" },
    ["gP"] = { '"+P', desc = "Paste from system clipboard" },
    ["gD"] = { '"_d', desc = "Delete to void" },

    -- Move with alt in insert, terminal and command
    -- Don't `noremap` in insert mode to have these keybindings behave exactly
    -- like arrows (crucial inside TelescopePrompt)
    ["<M-h>"] = { "<Left>", noremap = false, desc = "Left" },
    ["<M-j>"] = { "<Down>", noremap = false, desc = "Down" },
    ["<M-k>"] = { "<Up>", noremap = false, desc = "Up" },
    ["<M-l>"] = { "<Right>", noremap = false, desc = "Right" },

    -- some plugin mappings
    -- if lsp_lines is installed, this toggles it on or off
    -- ["<leader>lx"] = {require("lsp_lines").toggle, desc = "Toggle lsp lines",},
    -- ["<leader>xs"] = {require("lsp_lines").toggle, desc = "Toggle lsp lines",},
    ["<leader>lP"] = { "<cmd>TSPlaygroundToggle<cr>", desc = "Toggle TS Playgound", },
    ["<leader>lt"] = { "<cmd>TSHighlightCapturesUnderCursor<cr>", desc = "TS Highlight under Cursor", },
    ["<leader>lT"] = { "<cmd>TSNodeUnderCursor<cr>", desc = "TS Node under Cursor", },
    -- ["<leader>uH"] = { "<cmd>Hardtime toggle<cr>", desc = "Toggle Hardtime", },
    ["<leader>fs"] = { "<cmd>Telescope aerial<cr>", desc = "Search symbols" },
    ["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Find projects" },

    -- Diffview mappings
    ["<leader>gDo"] = { "<cmd>DiffviewOpen<cr>", desc = "Open" },
    ["<leader>gDc"] = { "<cmd>DiffviewClose<cr>", desc = "Close" },
    ["<leader>gDr"] = { "<cmd>DiffviewRefresh<cr>", desc = "Refresh" },
    ["<leader>gDf"] = { "<cmd>DiffviewFileHistory<cr>", desc = "File history" },
    ["<leader>gDF"] = { "<cmd>DiffviewFileHistory %<cr>", desc = "Current file history" },
    ["<leader>gDm"] = { "<cmd>h Diffview-merge-tool<cr>", desc = "Help merge tool" },
    ["<leader>gD"] = { desc = " Diffview" },

    -- put todo-comments under trouble group
    ["<leader>xt"] = { "<cmd>TodoTelescope<cr>", desc = "Open Todos in Telescope" },
    ["<leader>xT"] = { "<cmd>TodoTrouble<cr>", desc = "Open Todos in Trouble" },
    ["<leader>xQ"] = { "<cmd>TodoQuickFix<cr>", desc = "Quickfix List (Todo)" },
    ["<leader>xL"] = { "<cmd>TodoLocList<cr>", desc = "Location List (Todo)" },
    -- ["<leader>x"] = { desc = "󰒡 Trouble" },

    -- REPL via send-to-term
    ["<leader>rr"] = { "<Plug>Send", desc = "Send to REPL" },
    ["<leader>rl"] = { "<Plug>SendLine", desc = "Send line to REPL" },
    ["<leader>r<cr>"] = { "<cmd>SendHere<cr>", desc = "Set REPL" },
    ["<leader>r"] = { desc = " REPL" },

    -- fix missing descriptions in which-key
    ["<leader>fd"] = { desc = "Debugger", },

    -- visuals
    -- ["<leader>uT"] = {
    --   function() require("tint").toggle() end,
    --   desc = "Toggle tint",
    -- },
    -- ["<leader>uZ"] = { "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },
  },
  -- terminal mappings
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<C-BS>"] = { "<C-\\><C-n>", desc = "Terminal normal mode" },
    ["<esc><esc>"] = { "<C-\\><C-n>:q<cr>", desc = "Terminal quit" },
  },
  v = {
    ["<leader>r"] = { "<Plug>Send", desc = "Send to REPL" },
    -- ["<leader>s"] = { function() require("spectre").open_visual() end, desc = "Spectre" },
    -- Search inside visually highlighted text. Use `silent = false` for it to
    -- make effect immediately.
    ["g/"] = { "<esc>/\\%V", silent = false, desc = "Search inside visual selection" },
    ["gV"] = { '"`[" . strpart(getregtype(), 0, 1) . "`]"', expr = true, desc = "Visually select changed text" },
    ["gy"] = { '"+y', desc = "yank to system clipboard" },
    ["gY"] = { '"+y$', desc = "Yank to system clipboard" },
    ["gp"] = { '"+p', desc = "Paste from system clipboard" },
    ["gP"] = { '"+P', desc = "Paste from system clipboard" },
    ["gD"] = { '"_d', desc = "Delete to void" },
    -- Search visually selected text (slightly better than builtins in Neovim>=0.8)
    ["*"] = { [[y/\V<C-R>=escape(@", '/\')<CR><CR>]] },
    ["#"] = { [[y?\V<C-R>=escape(@", '?\')<CR><CR>]] },
  },
}
