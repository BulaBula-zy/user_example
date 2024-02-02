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

  -- TODO: test the plugin below
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {}, -- must use this code to setup
    event = "User AstroFile", -- triggered after opening a file
    cmd = { "TodoQuickFix" }, -- triggered after excuting :TodoQuickFix
    key = {
      "<leader>T",
      "<cmd>TodoTelescope<cr>",
      desc = "Open TODOs in Telescope",
    }, -- triggered after inputing <leader>T
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },

  {
    "iamcco/markdown-preview.nvim",
    event = "User AstroFile",
    opts = {},
    ft = { "markdown" },
    -- if it's not working, you can go to `~/.local/share/nvim/lazy/markdown-preview.nvim/app` and manually run `npm install` instead
    -- see https://github.com/iamcco/markdown-preview.nvim/issues/558
    build = "cd app && npm install",
    config = function()
      vim.g.mkdp_filetypes = { "markdown" }
      vim.g.mkdp_auto_close = true
      vim.g.mkdp_open_to_the_world = false
      vim.g.mkdp_open_ip = "127.0.0.1"
      vim.g.mkdp_port = "8787"
      vim.g.mkdp_browser = ""
      vim.g.mkdp_echo_preview_url = true
      vim.g.mkdp_page_title = "${name}"
    end,
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    keys = { { "<leader>gm", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview" } },
  },
}
