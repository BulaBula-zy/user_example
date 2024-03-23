-- NOTE: mode could be one of the following
-- window (default)
-- virtual
local mode = "window"
return {
  "FabijanZulj/blame.nvim",
  event = "User AstroGitFile",
  keys = { { "<leader>gB", "<cmd>ToggleBlame " .. mode .. "<cr>", desc = "Toggle Git blame" } },
}
