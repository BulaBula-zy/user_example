-- help functions
function SelectInnerWord() vim.cmd [[normal! viw]] end
function SelectInnerWORD() vim.cmd [[normal! viW]] end

-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },

    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command

    -- open TODOs in telescope
    ["<leader>T"] = {
      "<cmd>TodoTelescope<cr>",
      desc = "Open TODOs in Telescope",
    },

    -- selecet inner word
    ["eb"] = {
      "<cmd>lua SelectInnerWord()<cr>",
      desc = "Select inner word",
    },
    -- selecet inner WORD
    ["EB"] = {
      "<cmd>lua SelectInnerWORD()<cr>",
      desc = "Select inner WORD",
    },
  },
  v = {
    -- FIX: move ONLY ONE line of code vertically now.
    -- need to re-enter VISUDL mode when you want to move multiple lines.
    -- ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move the selected code vertically up" },
    -- ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move the selected code vertically down" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
