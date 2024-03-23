return {
  -- TODO: test the plugin below
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {}, -- must use this code to setup
  event = "User AstroFile", -- triggered after opening a file
  cmd = { "TodoQuickFix" }, -- triggered after excuting :TodoQuickFix
  -- NOTE: use 'keys' instead of 'key'
  keys = {
    {
      "<leader>T",
      "<cmd>TodoTelescope<cr>",
      desc = "Open TODOs in Telescope",
    }, -- triggered after inputing <leader>T
  },
}
