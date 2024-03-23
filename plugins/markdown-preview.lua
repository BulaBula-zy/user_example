return {
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
  keys = { { "<leader>um", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview" } },
}
