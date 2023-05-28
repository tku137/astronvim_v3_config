-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
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

    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    
    -- some plugin mappings
    -- if lsp_lines is installed, this toggles it on or off
    -- ["<leader>ll"] = {require("lsp_lines").toggle, desc = "Toggle lsp lines",},
    
    -- put aerial shortcuts under the 'find' menu
    -- ["<leader>fs"] = { "<cmd>Telescope aerial<cr>", desc = "Search symbols" },
    -- ["<leader>fS"] = { "<cmd>AerialToggle<cr>", desc = "Symbols outline" },

    -- put todo-comments under trouble group
    ["<leader>xt"] = { "<cmd>TodoTelescope<cr>", desc = "Open Todos in Telescope" },
    ["<leader>xT"] = { "<cmd>TodoTrouble<cr>", desc = "Open Todos in Trouble" },
    ["<leader>xQ"] = { "<cmd>TodoQuickFix<cr>", desc = "Quickfix List (Todo)" },
    ["<leader>xL"] = { "<cmd>TodoLocList<cr>", desc = "Location List (Todo)" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
