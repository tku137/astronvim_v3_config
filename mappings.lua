-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

local astro_utils = require "astronvim.utils"

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

    -- Codeium
    ["<leader>;"] = { desc = "󰧑 AI Assistant" },
    ["<leader>;;"] = {
      function()
        vim.cmd.Codeium(vim.g.codeium_enabled == 0 and "Enable" or "Disable")
        astro_utils.notify("Codeium " .. (vim.g.codeium_enabled == 0 and "Disabled" or "Enabled"))
      end,
      desc = "Toggle Global",
    },
    ["<leader>;b"] = {
      function()
        vim.cmd.Codeium(vim.b.codeium_enabled == 0 and "EnableBuffer" or "DisableBuffer")
        astro_utils.notify("Codeium (buffer) " .. (vim.b.codeium_enabled == 0 and "Disabled" or "Enabled"))
      end,
      desc = "Toggle Buffer",
    },
    ["<leader>;a"] = {
      function() return vim.fn["codeium#Accept"]() end,
      desc = "Insert Suggestion",
    },
    ["<leader>;k"] = {
      function() return vim.fn["codeium#CycleCompletions"](1) end,
      desc = "Next Suggestion",
    },
    ["<leader>;j"] = {
      function() return vim.fn["codeium#CycleCompletions"](-1) end,
      desc = "Previous Suggestion",
    },
    ["<leader>;x"] = {
      function() return vim.fn["codeium#Clear"]() end,
      desc = "Clear Current Suggestion",
    },
    ["<leader>;m"] = {
      function() return vim.fn["codeium#Complete"]() end,
      desc = "Manually Trigger Suggestion",
    },

    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- some plugin mappings
    -- if lsp_lines is installed, this toggles it on or off
    -- ["<leader>ll"] = {require("lsp_lines").toggle, desc = "Toggle lsp lines",},

    -- put aerial shortcuts under the 'find' menu
    -- ["<leader>fs"] = { "<cmd>Telescope aerial<cr>", desc = "Search symbols" },
    -- ["<leader>fS"] = { "<cmd>AerialToggle<cr>", desc = "Symbols outline" },

    -- put projects shortcut under the 'find' menu
    ["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Find projects" },

    -- put todo-comments under trouble group
    ["<leader>x"] = { desc = "󰒡 Trouble" },
    ["<leader>xt"] = { "<cmd>TodoTelescope<cr>", desc = "Open Todos in Telescope" },
    ["<leader>xT"] = { "<cmd>TodoTrouble<cr>", desc = "Open Todos in Trouble" },
    ["<leader>xQ"] = { "<cmd>TodoQuickFix<cr>", desc = "Quickfix List (Todo)" },
    ["<leader>xL"] = { "<cmd>TodoLocList<cr>", desc = "Location List (Todo)" },

    -- REPL via send-to-term
    ["<leader>r"] = { desc = " REPL" },
    ["<leader>rr"] = { "<Plug>Send", desc = "Send to REPL" },
    ["<leader>rl"] = { "<Plug>SendLine", desc = "Send line to REPL" },
    ["<leader>r<cr>"] = { "<cmd>SendHere<cr>", desc = "Set REPL" },

    -- visuals
    ["<leader>uT"] = {
      function() require("tint").toggle() end,
      desc = "Toggle tint",
    },
    ["<leader>uZ"] = { "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["<leader>r"] = { "<Plug>Send", desc = "Send to REPL" },
    -- ["<leader>s"] = { function() require("spectre").open_visual() end, desc = "Spectre" },
  },
}
