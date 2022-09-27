-- BASIC OPTIONS
vim.g.mapleader = ' '                   -- use space as leader key
vim.opt.mouse = 'a'                     -- mouse support

vim.opt.timeoutlen = 300                -- set shorter timeout

-- Tab set to two spaces
vim.opt.tabstop = 2
vim.opt.expandtab = true                -- convert tabs to spaces
vim.opt.shiftwidth = 2                  -- use 2 spaces when hitting shift
vim.opt.softtabstop = 2                 -- 2 spaces tab

vim.opt.number = true                   -- use line numbers
vim.opt.relativenumber = true           -- relative line numbers

vim.opt.signcolumn = 'yes'

-- vim.opt.cmdheight = 2
vim.opt.fileencoding = 'utf-8'          -- file encoding to utf8
vim.opt.clipboard = 'unnamedplus'       -- share clipboard with system
vim.opt.pumheight = 10                  -- pop up menu height
vim.opt.hlsearch = true                 -- highlight search results

vim.cmd [[
  if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  endif
]]

vim.opt.splitbelow = true               -- always split below
vim.opt.splitright = true               -- always split right
vim.opt.undofile = true                 -- create undo file
vim.opt.cursorline = true               -- highlight current line
vim.opt.cursorcolumn = true             -- highlight current column
vim.opt.wrap = false                    -- don't wrap text
vim.opt.scrolloff = 8                   -- keep 8 lines above & below cursorline always
vim.opt.sidescrolloff = 8               -- same but to the side
vim.opt.sidescroll = 1
vim.cmd 'set whichwrap+=<,>,[,],h,l'    -- wrap scrolling / cursor inputs at end of lines
vim.cmd [[set iskeyword+=-]]            -- treat asdfwa-ddad-dwad as one word

vim.g.guicursor='n-v-c-sm:block,i-ci-ve:ver25-Cursor,r-cr-o:hor20'

