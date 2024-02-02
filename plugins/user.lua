-- Lazy Events
--  User AstroFile: Triggered after opening a file
--  VeryLazy: Triggered after starting Neovim
--  BufEnter *.lua: Triggered after opening a lua file
--  InsertEnter: Triggered after entering insert mode
--  LspAttach: Triggered after starting LSPs

return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
