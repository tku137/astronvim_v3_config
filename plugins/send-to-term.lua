return {
  "mtikekar/nvim-send-to-term",
  init = function() vim.g.send_disable_mapping = true end,
  keys = { "<Plug>Send", "<Plug>SendLine" },
  cmd = "SendHere",
}
