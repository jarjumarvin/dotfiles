-- GRUVBOX
--
-- vim.g.gruvbox_contrast_dark = 'medium'
-- vim.g.gruvbox_contrast_light =  'hard'
-- vim.g.gruvbox_hls_cursor = 'purple'
-- vim.g.gruvbox_invert_selection = 0
-- vim.cmd 'colorscheme gruvbox'

--[[ AYU ]]

-- vim.cmd 'let ayucolor="mirage"'
-- vim.cmd 'colorscheme ayu'

-- MELANGE
--
vim.cmd[[colorscheme melange]]

vim.cmd[[
  if !empty($CONSOLE_THEME)
      let &background=$CONSOLE_THEME
  else
      set background=dark
  endif
]]

vim.cmd[[
  if !empty($CONSOLE_THEME)
    let &background=$CONSOLE_THEME
  else
    set background=dark
  endif
]]
-- CATPPUCCIN
--
-- vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
-- vim.cmd[[colorscheme catppuccin]]

-- seoul256
-- vim.cmd[[colo seoul256]]
