-- Keymap shortcuts
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

-- Additional escape keys
keymap("i", "jk", "<ESC>", opts)

-- Disable arrow keys
keymap("n", "<Up>", "<Nop>", opts)
keymap("n", "<Left>", "<Nop>", opts)
keymap("n", "<Right>", "<Nop>", opts)
keymap("n", "<Down>", "<Nop>", opts)

-- Split shortcuts
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
