return {
  {
    "sindrets/diffview.nvim",
    event = "User AstroGitFile",
    cmd = { "DiffviewOpen" },
    opts = function()
      local actions = require("diffview.actions")
      -- explicitly register which-key bindings for their labels
      local wk = require("which-key")
      wk.register({
        ["<leader>m"] = { name = "󰡎 Conflict choose" },
        ["<leader>mo"] = { actions.conflict_choose("ours"), "Conflict choose ours" },
        ["<leader>mt"] = { actions.conflict_choose("theirs"), "Conflict choose theirs" },
        ["<leader>mb"] = { actions.conflict_choose("base"), "Conflict choose base" },
        ["<leader>ma"] = { actions.conflict_choose("all"), "Conflict choose all" },
        ["<leader>mO"] = { actions.conflict_choose_all("ours"), "Conflict choose all ours" },
        ["<leader>mT"] = { actions.conflict_choose_all("theirs"), "Conflict choose all theirs" },
        ["<leader>mB"] = { actions.conflict_choose_all("base"), "Conflict choose all base" },
        ["<leader>mA"] = { actions.conflict_choose_all("all"), "Conflict choose all all" },
        ["<leader>dx"] = { actions.conflict_choose("none"), "Conflict delete" },
        ["<leader>dX"] = { actions.conflict_choose_all("none"), "Conflict delete all" },
        ["<tab>"] = { actions.select_next_entry, "Open the diff for the next file" },
        ["<s-tab>"] = { actions.select_prev_entry, "Open the diff for the previous file" },
        ["gf"] = { actions.goto_file_edit, "Open the file in the previous tabpage" },
        ["<C-w><C-f>"] = { actions.goto_file_split, "Open the file in a new split" },
        ["<C-w>gf"] = { actions.goto_file_tab, "Open the file in a new tabpage" },
        ["<leader>o"] = { actions.focus_files, "Bring focus to the file panel" },
        ["<leader>e"] = { actions.toggle_files, "Toggle the file panel." },
        ["g<C-x>"] = { actions.cycle_layout, "Cycle through available layouts." },
        ["[x"] = { actions.prev_conflict, "In the merge-tool: jump to the previous conflict" },
        ["]x"] = { actions.next_conflict, "In the merge-tool: jump to the next conflict" },
      })
      return {
        key_bindings = {
          disable_defaults = true, -- Disable the default key bindings
          -- The `view` bindings are active in the diff buffers, only when the current
          -- tabpage is a Diffview.
          view = {
            -- The `view` bindings are active in the diff buffers, only when the current
            -- tabpage is a Diffview.
            { "n", "<tab>",       actions.select_next_entry,              { desc = "Open the diff for the next file" } },
            { "n", "<s-tab>",     actions.select_prev_entry,              { desc = "Open the diff for the previous file" } },
            { "n", "gf",          actions.goto_file_edit,                 { desc = "Open the file in the previous tabpage" } },
            { "n", "<C-w><C-f>",  actions.goto_file_split,                { desc = "Open the file in a new split" } },
            { "n", "<C-w>gf",     actions.goto_file_tab,                  { desc = "Open the file in a new tabpage" } },
            { "n", "<leader>o",   actions.focus_files,                    { desc = "Bring focus to the file panel" } },
            { "n", "<leader>e",   actions.toggle_files,                   { desc = "Toggle the file panel." } },
            { "n", "g<C-x>",      actions.cycle_layout,                   { desc = "Cycle through available layouts." } },
            { "n", "[x",          actions.prev_conflict,                  { desc = "In the merge-tool: jump to the previous conflict" } },
            { "n", "]x",          actions.next_conflict,                  { desc = "In the merge-tool: jump to the next conflict" } },
            { "n", "<leader>mo",  actions.conflict_choose("ours"),        { desc = "Choose the OURS version of a conflict" } },
            { "n", "<leader>mt",  actions.conflict_choose("theirs"),      { desc = "Choose the THEIRS version of a conflict" } },
            { "n", "<leader>mb",  actions.conflict_choose("base"),        { desc = "Choose the BASE version of a conflict" } },
            { "n", "<leader>ma",  actions.conflict_choose("all"),         { desc = "Choose all the versions of a conflict" } },
            { "n", "dx",          actions.conflict_choose("none"),        { desc = "Delete the conflict region" } },
            { "n", "<leader>mO",  actions.conflict_choose_all("ours"),    { desc = "Choose the OURS version of a conflict for the whole file" } },
            { "n", "<leader>mT",  actions.conflict_choose_all("theirs"),  { desc = "Choose the THEIRS version of a conflict for the whole file" } },
            { "n", "<leader>mB",  actions.conflict_choose_all("base"),    { desc = "Choose the BASE version of a conflict for the whole file" } },
            { "n", "<leader>mA",  actions.conflict_choose_all("all"),     { desc = "Choose all the versions of a conflict for the whole file" } },
            { "n", "dX",          actions.conflict_choose_all("none"),    { desc = "Delete the conflict region for the whole file" } },
          },
        },
      }
    end,
  },
  {
    "NeogitOrg/neogit",
    optional = true,
    opts = {
      integrations = { diffview = true } },
  },
}
