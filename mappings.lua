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
    -- ["<leader>fs"] = { "<cmd>Telescope aerial<cr>", desc = "Search symbols" },
    -- ["<leader>fS"] = { "<cmd>AerialToggle<cr>", desc = "Symbols outline" },
    ["<leader>bl"] = { "<cmd>bprevious<cr>", desc = "Left buffer"},
    ["<leader>br"] = { "<cmd>bnext<cr>", desc = "Right buffer"},
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>ll"] = {require("lsp_lines").toggle, desc = "Toggle lsp lines",},
    -- ["<leader>fs"] = { "<cmd>Telescope aerial<cr>", desc = "Search symbols" },
    -- ["<leader>fS"] = { "<cmd>AerialToggle<cr>", desc = "Symbols outline" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
