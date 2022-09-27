-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/marvin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/marvin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/marvin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/marvin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/marvin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip/loaders/from_vscode\frequire\0" },
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/ayu-vim",
    url = "https://github.com/ayu-theme/ayu-vim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["cybu.nvim"] = {
    config = { "\27LJ\2\nH\0\0\4\0\4\0\n6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\1B\2\1\1K\0\1\0\nsetup\tcybu\frequire\npcall\0" },
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/cybu.nvim",
    url = "https://github.com/ghillb/cybu.nvim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\nY\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\ttext\1\0\0\1\0\1\fspinner\nnoise\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  fzf = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["fzy-lua-native"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/fzy-lua-native",
    url = "https://github.com/romgrk/fzy-lua-native"
  },
  ["glow.nvim"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/glow.nvim",
    url = "https://github.com/ellisonleao/glow.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  indentLine = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/indentLine",
    url = "https://github.com/Yggdroot/indentLine"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/lsp-status.nvim",
    url = "https://github.com/nvim-lua/lsp-status.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n√\5\0\0\a\0\30\2'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0034\4\0\0=\4\v\0034\4\3\0005\5\f\0006\6\r\0009\6\14\0069\6\15\6\24\6\0\6\25\6\1\6=\6\16\0055\6\17\0=\6\18\0055\6\19\0=\6\20\0055\6\21\0=\6\22\5>\5\1\4=\4\23\0034\4\0\0=\4\24\0035\4\25\0=\4\26\3=\3\27\0025\3\28\0=\3\29\2B\0\2\1K\0\1\0\15extensions\1\3\0\0\14nvim-tree\bfzf\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\14lualine_x\fsymbols\1\0\3\14directory\bÓóæ\19alternate_file\a~ \rmodified\b‚óè\18buffers_color\1\0\2\vactive\21lualine_x_active\rinactive\23lualine_x_inactive\19filetype_names\1\0\3\vpacker\vPacker\20TelescopePrompt\14Telescope\bfzf\bFZF\15max_length\fcolumns\6o\bvim\1\2\4\0\fbuffers\25show_modified_status\2\28hide_filename_extension\1\23show_filename_only\2\tmode\3\0\14lualine_c\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\1\0\3\25component_separators\5\23section_separators\5\ntheme\tauto\nsetup\flualine\frequire\4\6\0" },
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  melange = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/melange",
    url = "https://github.com/savq/melange"
  },
  ["move.nvim"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/move.nvim",
    url = "https://github.com/fedepujol/move.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\3¿\tbody\15lsp_expandØ\1\0\2\a\1\b\0\0156\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\0059\6\0\1B\2\4\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\1¿\tname\vsource\1\0\4\tpath\v[Path]\rnvim_lsp\n[LSP]\vbuffer\r[Buffer]\fluasnip\14[Snippet]\tmenu\n%s %s\vformat\vstring\tkind≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\3¿\0¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\3¿\tjump\rjumpable\21select_prev_item\fvisibled\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprintÃ\b\1\2\t\0(\0ó\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0015\2\5\0=\1\6\0026\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\n\0006\a\0\0009\a\v\a9\a\f\a9\a\r\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\14\0006\a\0\0009\a\v\a9\a\f\a9\a\15\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\16\0006\a\0\0009\a\v\a9\a\f\a9\a\17\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\18\0006\a\0\0009\a\v\a9\a\f\a9\a\19\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\20\0'\a\21\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\22\0006\a\0\0009\a\v\a9\a\f\a9\a\23\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\24\0006\a\0\0009\a\v\a9\a\f\a9\a\25\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\26\0006\a\0\0009\a\v\a9\a\f\a9\a\27\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\28\0003\a\29\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\30\0006\a\0\0009\a\v\a9\a\f\a9\a\31\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6 \0006\a\0\0009\a\v\a9\a\f\a9\a!\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\"\0'\a#\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6$\0006\a\0\0009\a\v\a9\a\f\a9\a%\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6&\0'\a'\0B\3\4\1K\0\1\0007:Telescope lsp_document_symbols theme=dropdown<cr>\14<leader>s\15formatting\14<leader>f1:Telescope lsp_references theme=dropdown<cr>\agr\16code_action\15<leader>ca\vrename\15<leader>rn\0\15<leader>wl\28remove_workspace_folder\15<leader>wr\25add_workspace_folder\15<leader>wa\19signature_help\n<C-k>6:Telescope lsp_implementations theme=dropdown<cr>\agi\nhover\6K\20type_definition\agt\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimÏ\21\1\0\18\0ú\1\0Ä\0023\0\0\0005\1\1\0006\2\2\0009\2\3\0025\3\5\0=\3\4\0026\2\6\0'\4\a\0B\2\2\0026\3\6\0'\5\b\0B\3\2\0029\4\t\0025\6\r\0005\a\v\0003\b\n\0=\b\f\a=\a\14\0065\a\16\0005\b\15\0=\b\17\a=\a\18\0065\a\20\0005\b\19\0=\b\21\a3\b\22\0=\b\23\a=\a\24\0064\a\0\0=\a\25\0069\a\26\0029\a\27\a9\a\28\a5\t\30\0009\n\26\0029\n\29\nB\n\1\2=\n\31\t9\n\26\0029\n \nB\n\1\2=\n!\t9\n\26\0029\f\26\0029\f\"\f)\14ˇˇB\f\2\0025\r#\0B\n\3\2=\n$\t9\n\26\0029\f\26\0029\f\"\f)\14\1\0B\f\2\0025\r%\0B\n\3\2=\n&\t9\n\26\0029\f\26\0029\f'\fB\f\1\0025\r(\0B\n\3\2=\n)\t9\n*\0029\n+\n=\n,\t9\n\26\0025\f.\0009\r\26\0029\r-\rB\r\1\2=\r/\f9\r\26\0029\r0\rB\r\1\2=\r1\fB\n\2\2=\n2\t9\n\26\0029\n3\n5\f4\0B\n\2\2=\n5\t9\n\26\0023\f6\0005\r7\0B\n\3\2=\n8\t9\n\26\0023\f9\0005\r:\0B\n\3\2=\n;\tB\a\2\2=\a\26\0069\a*\0029\a<\a4\t\5\0005\n=\0>\n\1\t5\n>\0>\n\2\t5\n?\0>\n\3\t5\n@\0>\n\4\tB\a\2\2=\a<\6B\4\2\0016\4\6\0'\6A\0B\4\2\0029\5B\2\18\a\5\0009\5C\5'\bD\0009\tE\0045\vG\0005\fF\0=\fH\vB\t\2\0A\5\2\0015\5I\0006\6\2\0009\6J\0069\6K\6'\bL\0'\tM\0006\n\2\0009\nN\n9\nO\n\18\v\5\0B\6\5\0016\6\2\0009\6J\0069\6K\6'\bL\0'\tP\0006\n\2\0009\nN\n9\nQ\n\18\v\5\0B\6\5\0016\6\2\0009\6J\0069\6K\6'\bL\0'\tR\0006\n\2\0009\nN\n9\nS\n\18\v\5\0B\6\5\0016\6\2\0009\6J\0069\6K\6'\bL\0'\tT\0'\nU\0\18\v\5\0B\6\5\0013\6V\0006\a\6\0'\tW\0B\a\2\0029\aX\a6\t\2\0009\tY\t9\tZ\t9\t[\tB\t\1\0A\a\0\0026\b\6\0'\n\\\0B\b\2\0029\b]\b9\b\t\b5\n^\0=\6_\n=\a`\n5\vp\0005\fb\0005\ra\0=\rc\f5\re\0005\14d\0=\14f\r=\rg\f5\rk\0006\14\2\0009\14h\0149\14i\14'\16j\0+\17\2\0B\14\3\2=\14l\r=\rm\f5\rn\0=\ro\f=\fq\v=\vr\nB\b\2\0016\b\6\0'\n\\\0B\b\2\0029\bs\b9\b\t\b5\nu\0005\vt\0=\vv\n5\võ\0005\fx\0005\rw\0=\ry\f5\r{\0005\14z\0=\14|\r5\14}\0=\14~\r5\14\0=\14Ä\r5\14Å\0=\14Ç\r5\14É\0=\14Ñ\r5\14Ö\0=\14Ü\r5\14á\0004\15\0\0=\15à\14=\14â\r5\14ä\0=\14ã\r5\14å\0=\14ç\r5\14é\0=\14è\r5\14ê\0=\14ë\r5\14í\0=\14ì\r5\14î\0=\14ï\r5\14ñ\0=\14ó\r5\14ò\0=\14ô\r=\rö\f=\fs\v=\vr\n=\6_\nB\b\2\0012\0\0ÄK\0\1\0\1\0\0\fplugins\20rope_completion\1\0\1\fenabled\1\fpreload\1\0\1\fenabled\1\vmccabe\1\0\1\fenabled\1\15pydocstyle\1\0\1\fenabled\1\vpylint\1\0\1\fenabled\1\tyapf\1\0\1\fenabled\1\nisort\1\0\1\fenabled\1\tmypy\1\0\1\fenabled\1\vflake8\vignore\1\0\2\fenabled\2\18maxLineLength\3†\1\16pycodestyle\1\0\1\fenabled\1\17jedi_symbols\1\0\2\fenabled\2\15all_scopes\2\24jedi_signature_help\1\0\1\fenabled\2\20jedi_references\1\0\1\fenabled\2\15jedi_hover\1\0\1\fenabled\2\20jedi_completion\1\0\0\1\0\1\fenabled\2\25configurationSources\1\0\0\1\2\0\0\vflake8\14filetypes\1\0\0\1\2\0\0\vpython\npylsp\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\17capabilities\14on_attach\1\0\0\16sumneko_lua\14lspconfig\29make_client_capabilities\rprotocol\blsp\24update_capabilities\17cmp_nvim_lsp\0\31:Telescope diagnostics<cr>\15<leader>fd\14goto_prev\15<leader>dk\14goto_next\15<leader>dj\15open_float\15diagnostic\14<leader>o\6n\bset\vkeymap\1\0\2\fnoremap\2\vsilent\2\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\vwindow\15formatting\vformat\0\vfields\1\0\0\1\3\0\0\tabbr\tkind\tview\fentries\1\0\0\1\0\2\20selection_order\16near_cursor\tname\vcustom\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\fluasnip\bcmp\frequire\1\4\0\0\tmenu\fmenuone\rnoselect\16completeopt\bopt\bvim\1\0\25\tUnit\bÓàü\tFile\bÔúò\rProperty\bÔÇ≠\14Reference\bÔíÅ\vModule\bÔíá\vFolder\bÔùä\14Interface\bÔÉ®\15EnumMember\bÔÖù\nClass\bÔ†ñ\nEvent\bÔÉß\rVariable\bÔö¶\vStruct\bÔÜ≥\nField\bÓúñ\rConstant\bÔõº\16Constructor\bÔê•\rFunction\bÔûî\vMethod\6m\18TypeParameter\bÔûÉ\tText\bÔùæ\rOperator\bÔöî\nColor\bÔ£ó\fSnippet\bÔÉÑ\fKeyword\bÔ†ä\tEnum\bÔÖù\nValue\bÔ¢ü\0\0" },
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÚ\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\1\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\0\1\n\0\0\vpython\blua\vbibtex\bcss\thtml\tjson\nlatex\tscss\bvim\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["seoul256.vim"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/seoul256.vim",
    url = "https://github.com/junegunn/seoul256.vim"
  },
  ["stabilize.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14stabilize\frequire\0" },
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/stabilize.nvim",
    url = "https://github.com/luukvbaal/stabilize.nvim"
  },
  tagbar = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-repo.nvim"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/telescope-repo.nvim",
    url = "https://github.com/cljoly/telescope-repo.nvim"
  },
  ["telescope-zoxide"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/telescope-zoxide",
    url = "https://github.com/jvgrootveld/telescope-zoxide"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n§\3\0\0\b\0\21\0(6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\15\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\0045\5\r\0=\5\14\4=\4\16\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\17\1'\3\18\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\17\1'\3\19\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\17\1'\3\20\0B\1\2\1K\0\1\0\trepo\vzoxide\bfzf\19load_extension\rdefaults\1\0\0\22vimgrep_arguments\1\t\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\v--trim\rmappings\6i\1\0\0\n<esc>\1\0\0\nclose\17path_display\1\0\0\1\2\0\0\fshorten\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n‡\2\0\0\5\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\15float_opts\15highlights\1\0\2\vborder\vNormal\15background\vNormal\1\0\2\vborder\vcurved\rwinblend\3\0\nshell\6o\bvim\20shade_filetypes\1\0\t\18close_on_exit\2\17persist_size\2\20insert_mappings\2\20start_in_insert\2\20shade_terminals\1\14direction\nfloat\17hide_numbers\2\17open_mapping\n<c-\\>\tsize\3\20\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-better-whitespace"] = {
    config = { "\27LJ\2\nß\1\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0%let g:strip_whitespace_confirm=0&let g:better_whitespace_enabled=1%let g:strip_whitespace_on_save=1\bcmd\bvim\0" },
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/vim-better-whitespace",
    url = "https://github.com/ntpeters/vim-better-whitespace"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-startify"] = {
    config = { "\27LJ\2\n`\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Alet g:startify_bookmarks = [ '~/.zshrc', '~/.config/nvim/' ]\bcmd\bvim\0" },
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\n…\4\0\0\r\0 \2:6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0)\4\0\0B\1\3\0019\1\6\0'\3\b\0004\4\3\0009\5\t\0009\a\n\0005\t\v\0009\n\f\0B\n\1\2=\n\r\tB\a\2\0029\b\14\0B\b\1\0A\5\1\0?\5\0\0B\1\3\0019\1\6\0'\3\15\0009\4\16\0005\6\27\0009\a\17\0005\t\19\0009\n\18\0B\n\1\2=\n\20\t5\n\21\0009\v\22\0B\v\1\0?\v\1\0=\n\23\t5\n\24\0009\v\25\0B\v\1\0?\v\1\0=\n\26\tB\a\2\2=\a\28\0069\a\29\0005\t\30\0009\n\18\0B\n\1\2=\n\20\tB\a\2\2=\a\31\6B\4\2\0A\1\1\1K\0\1\0\6/\1\0\0\22wildmenu_renderer\6:\1\0\0\nright\24popupmenu_scrollbar\1\2\0\0\6 \tleft\23popupmenu_devicons\1\2\0\0\6 \16highlighter\1\0\0\24lua_fzy_highlighter\23popupmenu_renderer\17renderer_mux\rrenderer\24vim_search_pipeline\17fuzzy_filter\19lua_fzy_filter\1\0\1\nfuzzy\3\1\21cmdline_pipeline\vbranch\rpipeline\29use_python_remote_plugin\15set_option\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\3ÄÄ¿ô\4\5ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/home/marvin/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip/loaders/from_vscode\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: vim-startify
time([[Config for vim-startify]], true)
try_loadstring("\27LJ\2\n`\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Alet g:startify_bookmarks = [ '~/.zshrc', '~/.config/nvim/' ]\bcmd\bvim\0", "config", "vim-startify")
time([[Config for vim-startify]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÚ\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\1\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\0\1\n\0\0\vpython\blua\vbibtex\bcss\thtml\tjson\nlatex\tscss\bvim\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n§\3\0\0\b\0\21\0(6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\15\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\0045\5\r\0=\5\14\4=\4\16\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\17\1'\3\18\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\17\1'\3\19\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\17\1'\3\20\0B\1\2\1K\0\1\0\trepo\vzoxide\bfzf\19load_extension\rdefaults\1\0\0\22vimgrep_arguments\1\t\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\v--trim\rmappings\6i\1\0\0\n<esc>\1\0\0\nclose\17path_display\1\0\0\1\2\0\0\fshorten\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n√\5\0\0\a\0\30\2'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0034\4\0\0=\4\v\0034\4\3\0005\5\f\0006\6\r\0009\6\14\0069\6\15\6\24\6\0\6\25\6\1\6=\6\16\0055\6\17\0=\6\18\0055\6\19\0=\6\20\0055\6\21\0=\6\22\5>\5\1\4=\4\23\0034\4\0\0=\4\24\0035\4\25\0=\4\26\3=\3\27\0025\3\28\0=\3\29\2B\0\2\1K\0\1\0\15extensions\1\3\0\0\14nvim-tree\bfzf\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\14lualine_x\fsymbols\1\0\3\14directory\bÓóæ\19alternate_file\a~ \rmodified\b‚óè\18buffers_color\1\0\2\vactive\21lualine_x_active\rinactive\23lualine_x_inactive\19filetype_names\1\0\3\vpacker\vPacker\20TelescopePrompt\14Telescope\bfzf\bFZF\15max_length\fcolumns\6o\bvim\1\2\4\0\fbuffers\25show_modified_status\2\28hide_filename_extension\1\23show_filename_only\2\tmode\3\0\14lualine_c\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\1\0\3\25component_separators\5\23section_separators\5\ntheme\tauto\nsetup\flualine\frequire\4\6\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: cybu.nvim
time([[Config for cybu.nvim]], true)
try_loadstring("\27LJ\2\nH\0\0\4\0\4\0\n6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\1B\2\1\1K\0\1\0\nsetup\tcybu\frequire\npcall\0", "config", "cybu.nvim")
time([[Config for cybu.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n‡\2\0\0\5\0\f\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\15float_opts\15highlights\1\0\2\vborder\vNormal\15background\vNormal\1\0\2\vborder\vcurved\rwinblend\3\0\nshell\6o\bvim\20shade_filetypes\1\0\t\18close_on_exit\2\17persist_size\2\20insert_mappings\2\20start_in_insert\2\20shade_terminals\1\14direction\nfloat\17hide_numbers\2\17open_mapping\n<c-\\>\tsize\3\20\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\3¿\tbody\15lsp_expandØ\1\0\2\a\1\b\0\0156\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\0059\6\0\1B\2\4\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\1¿\tname\vsource\1\0\4\tpath\v[Path]\rnvim_lsp\n[LSP]\vbuffer\r[Buffer]\fluasnip\14[Snippet]\tmenu\n%s %s\vformat\vstring\tkind≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\3¿\0¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\3¿\tjump\rjumpable\21select_prev_item\fvisibled\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprintÃ\b\1\2\t\0(\0ó\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0015\2\5\0=\1\6\0026\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\n\0006\a\0\0009\a\v\a9\a\f\a9\a\r\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\14\0006\a\0\0009\a\v\a9\a\f\a9\a\15\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\16\0006\a\0\0009\a\v\a9\a\f\a9\a\17\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\18\0006\a\0\0009\a\v\a9\a\f\a9\a\19\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\20\0'\a\21\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\22\0006\a\0\0009\a\v\a9\a\f\a9\a\23\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\24\0006\a\0\0009\a\v\a9\a\f\a9\a\25\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\26\0006\a\0\0009\a\v\a9\a\f\a9\a\27\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\28\0003\a\29\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\30\0006\a\0\0009\a\v\a9\a\f\a9\a\31\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6 \0006\a\0\0009\a\v\a9\a\f\a9\a!\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\"\0'\a#\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6$\0006\a\0\0009\a\v\a9\a\f\a9\a%\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6&\0'\a'\0B\3\4\1K\0\1\0007:Telescope lsp_document_symbols theme=dropdown<cr>\14<leader>s\15formatting\14<leader>f1:Telescope lsp_references theme=dropdown<cr>\agr\16code_action\15<leader>ca\vrename\15<leader>rn\0\15<leader>wl\28remove_workspace_folder\15<leader>wr\25add_workspace_folder\15<leader>wa\19signature_help\n<C-k>6:Telescope lsp_implementations theme=dropdown<cr>\agi\nhover\6K\20type_definition\agt\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimÏ\21\1\0\18\0ú\1\0Ä\0023\0\0\0005\1\1\0006\2\2\0009\2\3\0025\3\5\0=\3\4\0026\2\6\0'\4\a\0B\2\2\0026\3\6\0'\5\b\0B\3\2\0029\4\t\0025\6\r\0005\a\v\0003\b\n\0=\b\f\a=\a\14\0065\a\16\0005\b\15\0=\b\17\a=\a\18\0065\a\20\0005\b\19\0=\b\21\a3\b\22\0=\b\23\a=\a\24\0064\a\0\0=\a\25\0069\a\26\0029\a\27\a9\a\28\a5\t\30\0009\n\26\0029\n\29\nB\n\1\2=\n\31\t9\n\26\0029\n \nB\n\1\2=\n!\t9\n\26\0029\f\26\0029\f\"\f)\14ˇˇB\f\2\0025\r#\0B\n\3\2=\n$\t9\n\26\0029\f\26\0029\f\"\f)\14\1\0B\f\2\0025\r%\0B\n\3\2=\n&\t9\n\26\0029\f\26\0029\f'\fB\f\1\0025\r(\0B\n\3\2=\n)\t9\n*\0029\n+\n=\n,\t9\n\26\0025\f.\0009\r\26\0029\r-\rB\r\1\2=\r/\f9\r\26\0029\r0\rB\r\1\2=\r1\fB\n\2\2=\n2\t9\n\26\0029\n3\n5\f4\0B\n\2\2=\n5\t9\n\26\0023\f6\0005\r7\0B\n\3\2=\n8\t9\n\26\0023\f9\0005\r:\0B\n\3\2=\n;\tB\a\2\2=\a\26\0069\a*\0029\a<\a4\t\5\0005\n=\0>\n\1\t5\n>\0>\n\2\t5\n?\0>\n\3\t5\n@\0>\n\4\tB\a\2\2=\a<\6B\4\2\0016\4\6\0'\6A\0B\4\2\0029\5B\2\18\a\5\0009\5C\5'\bD\0009\tE\0045\vG\0005\fF\0=\fH\vB\t\2\0A\5\2\0015\5I\0006\6\2\0009\6J\0069\6K\6'\bL\0'\tM\0006\n\2\0009\nN\n9\nO\n\18\v\5\0B\6\5\0016\6\2\0009\6J\0069\6K\6'\bL\0'\tP\0006\n\2\0009\nN\n9\nQ\n\18\v\5\0B\6\5\0016\6\2\0009\6J\0069\6K\6'\bL\0'\tR\0006\n\2\0009\nN\n9\nS\n\18\v\5\0B\6\5\0016\6\2\0009\6J\0069\6K\6'\bL\0'\tT\0'\nU\0\18\v\5\0B\6\5\0013\6V\0006\a\6\0'\tW\0B\a\2\0029\aX\a6\t\2\0009\tY\t9\tZ\t9\t[\tB\t\1\0A\a\0\0026\b\6\0'\n\\\0B\b\2\0029\b]\b9\b\t\b5\n^\0=\6_\n=\a`\n5\vp\0005\fb\0005\ra\0=\rc\f5\re\0005\14d\0=\14f\r=\rg\f5\rk\0006\14\2\0009\14h\0149\14i\14'\16j\0+\17\2\0B\14\3\2=\14l\r=\rm\f5\rn\0=\ro\f=\fq\v=\vr\nB\b\2\0016\b\6\0'\n\\\0B\b\2\0029\bs\b9\b\t\b5\nu\0005\vt\0=\vv\n5\võ\0005\fx\0005\rw\0=\ry\f5\r{\0005\14z\0=\14|\r5\14}\0=\14~\r5\14\0=\14Ä\r5\14Å\0=\14Ç\r5\14É\0=\14Ñ\r5\14Ö\0=\14Ü\r5\14á\0004\15\0\0=\15à\14=\14â\r5\14ä\0=\14ã\r5\14å\0=\14ç\r5\14é\0=\14è\r5\14ê\0=\14ë\r5\14í\0=\14ì\r5\14î\0=\14ï\r5\14ñ\0=\14ó\r5\14ò\0=\14ô\r=\rö\f=\fs\v=\vr\n=\6_\nB\b\2\0012\0\0ÄK\0\1\0\1\0\0\fplugins\20rope_completion\1\0\1\fenabled\1\fpreload\1\0\1\fenabled\1\vmccabe\1\0\1\fenabled\1\15pydocstyle\1\0\1\fenabled\1\vpylint\1\0\1\fenabled\1\tyapf\1\0\1\fenabled\1\nisort\1\0\1\fenabled\1\tmypy\1\0\1\fenabled\1\vflake8\vignore\1\0\2\fenabled\2\18maxLineLength\3†\1\16pycodestyle\1\0\1\fenabled\1\17jedi_symbols\1\0\2\fenabled\2\15all_scopes\2\24jedi_signature_help\1\0\1\fenabled\2\20jedi_references\1\0\1\fenabled\2\15jedi_hover\1\0\1\fenabled\2\20jedi_completion\1\0\0\1\0\1\fenabled\2\25configurationSources\1\0\0\1\2\0\0\vflake8\14filetypes\1\0\0\1\2\0\0\vpython\npylsp\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\17capabilities\14on_attach\1\0\0\16sumneko_lua\14lspconfig\29make_client_capabilities\rprotocol\blsp\24update_capabilities\17cmp_nvim_lsp\0\31:Telescope diagnostics<cr>\15<leader>fd\14goto_prev\15<leader>dk\14goto_next\15<leader>dj\15open_float\15diagnostic\14<leader>o\6n\bset\vkeymap\1\0\2\fnoremap\2\vsilent\2\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\vwindow\15formatting\vformat\0\vfields\1\0\0\1\3\0\0\tabbr\tkind\tview\fentries\1\0\0\1\0\2\20selection_order\16near_cursor\tname\vcustom\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\fluasnip\bcmp\frequire\1\4\0\0\tmenu\fmenuone\rnoselect\16completeopt\bopt\bvim\1\0\25\tUnit\bÓàü\tFile\bÔúò\rProperty\bÔÇ≠\14Reference\bÔíÅ\vModule\bÔíá\vFolder\bÔùä\14Interface\bÔÉ®\15EnumMember\bÔÖù\nClass\bÔ†ñ\nEvent\bÔÉß\rVariable\bÔö¶\vStruct\bÔÜ≥\nField\bÓúñ\rConstant\bÔõº\16Constructor\bÔê•\rFunction\bÔûî\vMethod\6m\18TypeParameter\bÔûÉ\tText\bÔùæ\rOperator\bÔöî\nColor\bÔ£ó\fSnippet\bÔÉÑ\fKeyword\bÔ†ä\tEnum\bÔÖù\nValue\bÔ¢ü\0\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\nY\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\ttext\1\0\0\1\0\1\fspinner\nnoise\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: vim-better-whitespace
time([[Config for vim-better-whitespace]], true)
try_loadstring("\27LJ\2\nß\1\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0%let g:strip_whitespace_confirm=0&let g:better_whitespace_enabled=1%let g:strip_whitespace_on_save=1\bcmd\bvim\0", "config", "vim-better-whitespace")
time([[Config for vim-better-whitespace]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
try_loadstring("\27LJ\2\n…\4\0\0\r\0 \2:6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0)\4\0\0B\1\3\0019\1\6\0'\3\b\0004\4\3\0009\5\t\0009\a\n\0005\t\v\0009\n\f\0B\n\1\2=\n\r\tB\a\2\0029\b\14\0B\b\1\0A\5\1\0?\5\0\0B\1\3\0019\1\6\0'\3\15\0009\4\16\0005\6\27\0009\a\17\0005\t\19\0009\n\18\0B\n\1\2=\n\20\t5\n\21\0009\v\22\0B\v\1\0?\v\1\0=\n\23\t5\n\24\0009\v\25\0B\v\1\0?\v\1\0=\n\26\tB\a\2\2=\a\28\0069\a\29\0005\t\30\0009\n\18\0B\n\1\2=\n\20\tB\a\2\2=\a\31\6B\4\2\0A\1\1\1K\0\1\0\6/\1\0\0\22wildmenu_renderer\6:\1\0\0\nright\24popupmenu_scrollbar\1\2\0\0\6 \tleft\23popupmenu_devicons\1\2\0\0\6 \16highlighter\1\0\0\24lua_fzy_highlighter\23popupmenu_renderer\17renderer_mux\rrenderer\24vim_search_pipeline\17fuzzy_filter\19lua_fzy_filter\1\0\1\nfuzzy\3\1\21cmdline_pipeline\vbranch\rpipeline\29use_python_remote_plugin\15set_option\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\3ÄÄ¿ô\4\5ÄÄ¿ô\4\0", "config", "wilder.nvim")
time([[Config for wilder.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: stabilize.nvim
time([[Config for stabilize.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14stabilize\frequire\0", "config", "stabilize.nvim")
time([[Config for stabilize.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
