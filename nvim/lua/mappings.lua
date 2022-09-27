-- KEYMAPS
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- shorten name
local keymap = vim.api.nvim_set_keymap

-- remap space to leader
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- remap c-s to save
keymap('n', '<C-s>', ':w<CR>', {})
keymap('i', '<C-s>', '<Esc>:w<CR>', {})

-- Normal Mode
---- Window Navigation
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

---- move blocks of code or lines
keymap('n', '<A-j>', ":MoveLine(1)<CR>", opts)
keymap('n', '<A-k>', ":MoveLine(-1)<CR>", opts)
keymap('v', '<A-j>', ":MoveBlock(1)<CR>", opts)
keymap('v', '<A-k>', ":MoveBlock(-1)<CR>", opts)
keymap('n', '<A-l>', ":MoveHChar(1)<CR>", opts)
keymap('n', '<A-h>', ":MoveHChar(-1)<CR>", opts)
keymap('v', '<A-l>', ":MoveHBlock(1)<CR>", opts)
keymap('v', '<A-h>', ":MoveHBlock(-1)<CR>", opts)

---- Leader Keys
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts) -- toggle nvimtree
keymap('n', '<leader>t', ':TagbarToggle<CR>', opts) -- toggle the tagbar

keymap('n', '<leader><leader>', ':Files <CR>', opts) -- find files
keymap('n', '<leader>fg', ':Telescope live_grep<CR>', opts) -- live_grep
keymap('n', '<leader>fr', ':Telescope git_files<CR>', opts) -- git files
keymap('n', '<leader>fb', ':Telescope buffers<CR>', opts) -- search buffers
keymap('n', '<leader>z', ':Telescope zoxide list<CR>', opts) -- search buffers

---- Buffer Navigation
keymap('n', '<S-l>', '<Plug>(CybuPrev)', opts)
keymap('n', '<S-h>', '<Plug>(CybuNext)', opts)

-- Insert Mode
---- use j then k fast to enter normal mode
keymap('i', 'jk', '<ESC>', opts)
keymap('t', 'jk', '<ESC>', opts)

-- Visual Mode
---- Stay in indent mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

keymap('v', 'p', '"_dP', opts)

-- make esc map to remove selection
keymap('n', '<Esc>', ':noh<CR>', opts)

-- make U redo
keymap('n', 'U', '<C-r>', opts)
