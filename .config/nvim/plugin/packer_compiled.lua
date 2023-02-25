-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/jarjumarvin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/jarjumarvin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/jarjumarvin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/jarjumarvin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/jarjumarvin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip/loaders/from_vscode\frequire\0" },
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/ayu-vim",
    url = "https://github.com/ayu-theme/ayu-vim"
  },
  catppuccin = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot-cmp"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16copilot_cmp\frequire\0" },
    load_after = {
      ["copilot.lua"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/opt/copilot-cmp",
    url = "https://github.com/zbirenbaum/copilot-cmp"
  },
  ["copilot.lua"] = {
    after = { "copilot-cmp" },
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fcopilot\frequire-\1\0\4\0\3\0\0066\0\0\0009\0\1\0003\2\2\0)\3d\0B\0\3\1K\0\1\0\0\rdefer_fn\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/opt/copilot.lua",
    url = "https://github.com/zbirenbaum/copilot.lua"
  },
  ["cybu.nvim"] = {
    config = { "\27LJ\2\nH\0\0\4\0\4\0\n6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\1B\2\1\1K\0\1\0\nsetup\tcybu\frequire\npcall\0" },
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/cybu.nvim",
    url = "https://github.com/ghillb/cybu.nvim"
  },
  editors = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/editors",
    url = "https://github.com/tamarin-prover/editors"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\nY\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\ttext\1\0\0\1\0\1\fspinner\nnoise\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  fzf = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["fzy-lua-native"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/fzy-lua-native",
    url = "https://github.com/romgrk/fzy-lua-native"
  },
  ["glow.nvim"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/glow.nvim",
    url = "https://github.com/ellisonleao/glow.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nä\1\0\0\3\0\b\0\v6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\a\0B\0\2\1K\0\1\0\1\0\1\25show_current_context\2\nsetup\21indent_blankline\frequire\a¬¶\26indent_blankline_char\6g\bvim\0" },
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/lsp-status.nvim",
    url = "https://github.com/nvim-lua/lsp-status.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nè\3\0\0\6\0\23\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\5\0005\5\4\0=\5\6\4=\4\a\3=\3\t\0025\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0034\4\0\0=\4\15\0034\4\0\0=\4\16\0034\4\0\0=\4\17\0035\4\18\0=\4\19\3=\3\20\0025\3\21\0=\3\22\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\bfzf\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\14lualine_x\14lualine_c\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\15statusline\1\0\0\1\2\0\0\rneo-tree\1\0\3\25component_separators\5\23section_separators\5\ntheme\tauto\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  melange = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/melange",
    url = "https://github.com/savq/melange"
  },
  ["move.nvim"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/move.nvim",
    url = "https://github.com/fedepujol/move.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\nÆ\3\0\0\6\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\b\0005\5\a\0=\5\t\4=\4\n\3=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\15filesystem\1\0\4\16hide_hidden\1\20hide_gitignored\1\27use_libuv_file_watcher\2\24follow_current_file\2\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\rconflict\5\vstaged\5\runstaged\5\fignored\5\14untracked\5\frenamed\bÔïî\fdeleted\b‚úñ\rmodified\5\nadded\5\tname\1\0\0\1\0\1\26use_git_status_colors\2\1\0\3\23enable_diagnostics\1\22enable_git_status\2\23popup_border_style\frounded\nsetup\rneo-tree\frequire\0" },
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\3¿\tbody\15lsp_expandØ\1\0\2\a\1\b\0\0156\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\0059\6\0\1B\2\4\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\1¿\tname\vsource\1\0\4\rnvim_lsp\n[LSP]\fluasnip\14[Snippet]\tpath\v[Path]\vbuffer\r[Buffer]\tmenu\n%s %s\vformat\vstring\tkind≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\3¿\0¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\3¿\tjump\rjumpable\21select_prev_item\fvisibled\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprint•\v\1\2\t\0000\0∏\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0015\2\5\0=\1\6\0026\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\n\0006\a\0\0009\a\v\a9\a\f\a9\a\r\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\14\0006\a\0\0009\a\v\a9\a\f\a9\a\15\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\16\0'\a\17\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\18\0'\a\19\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\20\0006\a\0\0009\a\v\a9\a\f\a9\a\21\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\22\0006\a\0\0009\a\v\a9\a\f\a9\a\23\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\24\0'\a\25\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\26\0006\a\0\0009\a\v\a9\a\f\a9\a\27\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\28\0006\a\0\0009\a\v\a9\a\f\a9\a\29\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\30\0006\a\0\0009\a\v\a9\a\f\a9\a\31\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6 \0003\a!\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\"\0006\a\0\0009\a\v\a9\a\f\a9\a#\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6$\0006\a\0\0009\a\v\a9\a\f\a9\a%\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6&\0'\a'\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6(\0006\a\0\0009\a\v\a9\a\f\a9\a)\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6*\0'\a+\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6,\0'\a-\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6.\0'\a/\0\18\b\2\0B\3\5\1K\0\1\0 :PyrightOrganizeImports<cr>\15<leader>ii7:Telescope lsp_document_symbols theme=dropdown<cr>\14<leader>s@:Telescope lsp_dynamic_workspace_symbols theme=dropdown<cr>\14<leader>S\15formatting\14<leader>f1:Telescope lsp_references theme=dropdown<cr>\agr\16code_action\15<leader>ca\vrename\15<leader>rn\0\15<leader>wl\28remove_workspace_folder\15<leader>wr\25add_workspace_folder\15<leader>wa\19signature_help\n<C-k>6:Telescope lsp_implementations theme=dropdown<cr>\agi\nhover\6K\20type_definition\agt/:vsplit | lua vim.lsp.buf.definition()<cr>\bgdv9:belowright split | lua vim.lsp.buf.definition()<cr>\bgds\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\2\fnoremap\2\vsilent\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim•\19\1\0\18\0Å\1\0Í\0013\0\0\0005\1\1\0006\2\2\0009\2\3\0025\3\5\0=\3\4\0026\2\6\0'\4\a\0B\2\2\0026\3\6\0'\5\b\0B\3\2\0029\4\t\0025\6\r\0005\a\v\0003\b\n\0=\b\f\a=\a\14\0065\a\16\0005\b\15\0=\b\17\a=\a\18\0065\a\20\0005\b\19\0=\b\21\a3\b\22\0=\b\23\a=\a\24\0065\a\28\0009\b\25\0029\b\26\b9\b\27\bB\b\1\2=\b\29\a9\b\25\0029\b\26\b9\b\27\bB\b\1\2=\b\30\a=\a\26\0069\a\31\0029\a \a9\a!\a5\t#\0009\n\31\0029\n\"\nB\n\1\2=\n$\t9\n\31\0029\n%\nB\n\1\2=\n&\t9\n\31\0029\f\31\0029\f'\f)\14ˇˇB\f\2\0025\r(\0B\n\3\2=\n)\t9\n\31\0029\f\31\0029\f'\f)\14\1\0B\f\2\0025\r*\0B\n\3\2=\n+\t9\n\31\0029\f\31\0029\f,\fB\f\1\0025\r-\0B\n\3\2=\n.\t9\n\25\0029\n/\n=\n0\t9\n\31\0025\f2\0009\r\31\0029\r1\rB\r\1\2=\r3\f9\r\31\0029\r4\rB\r\1\2=\r5\fB\n\2\2=\n6\t9\n\31\0029\n7\n5\f8\0B\n\2\2=\n9\t9\n\31\0023\f:\0005\r;\0B\n\3\2=\n<\t9\n\31\0023\f=\0005\r>\0B\n\3\2=\n?\tB\a\2\2=\a\31\0069\a\25\0029\a@\a4\t\6\0005\nA\0>\n\1\t5\nB\0>\n\2\t5\nC\0>\n\3\t5\nD\0>\n\4\t5\nE\0>\n\5\tB\a\2\2=\a@\6B\4\2\0016\4\6\0'\6F\0B\4\2\0029\5G\2\18\a\5\0009\5H\5'\bI\0009\tJ\0045\vL\0005\fK\0=\fM\vB\t\2\0A\5\2\0015\5N\0006\6\2\0009\6O\0069\6P\6'\bQ\0'\tR\0006\n\2\0009\nS\n9\nT\n\18\v\5\0B\6\5\0016\6\2\0009\6O\0069\6P\6'\bQ\0'\tU\0006\n\2\0009\nS\n9\nV\n\18\v\5\0B\6\5\0016\6\2\0009\6O\0069\6P\6'\bQ\0'\tW\0006\n\2\0009\nS\n9\nX\n\18\v\5\0B\6\5\0016\6\2\0009\6O\0069\6P\6'\bQ\0'\tY\0'\nZ\0\18\v\5\0B\6\5\0013\6[\0006\a\6\0'\t\\\0B\a\2\0029\a]\a6\t\2\0009\t^\t9\t_\t9\t`\tB\t\1\0A\a\0\0026\b\6\0'\na\0B\b\2\0029\bb\b9\b\t\b5\nc\0=\6d\n=\ae\n5\vu\0005\fg\0005\rf\0=\rh\f5\rj\0005\14i\0=\14k\r=\rl\f5\rp\0006\14\2\0009\14m\0149\14n\14'\16o\0+\17\2\0B\14\3\2=\14q\r=\rr\f5\rs\0=\rt\f=\fv\v=\vw\nB\b\2\0016\b\6\0'\na\0B\b\2\0029\bx\b9\b\t\b5\nz\0005\vy\0=\v{\n5\v\127\0005\f}\0005\r|\0=\r~\f=\fÄ\v=\vw\n=\6d\nB\b\2\0012\0\0ÄK\0\1\0\vpython\1\0\0\ranalysis\1\0\0\1\0\4\19diagnosticMode\14workspace\20autoSearchPaths\2\26autoImportCompletions\2\27useLibraryCodeForTypes\2\14filetypes\1\0\1\24single_file_support\2\1\2\0\0\vpython\fpyright\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\17capabilities\14on_attach\1\0\0\vlua_ls\14lspconfig\29make_client_capabilities\rprotocol\blsp\25default_capabilities\17cmp_nvim_lsp\0\31:Telescope diagnostics<cr>\15<leader>fd\14goto_prev\15<leader>dk\14goto_next\15<leader>dj\15open_float\15diagnostic\14<leader>o\6n\bset\vkeymap\1\0\2\vsilent\2\fnoremap\2\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\1\0\1\tname\fcopilot\fsources\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\15formatting\vformat\0\vfields\1\0\0\1\3\0\0\tabbr\tkind\tview\fentries\1\0\0\1\0\2\20selection_order\16near_cursor\tname\vcustom\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\fluasnip\bcmp\frequire\1\4\0\0\tmenu\fmenuone\rnoselect\16completeopt\bopt\bvim\1\0\25\tFile\bÔúò\rProperty\bÔÇ≠\14Reference\bÔíÅ\vModule\bÔíá\18TypeParameter\bÔûÉ\14Interface\bÔÉ®\rOperator\bÔöî\nClass\bÔ†ñ\nEvent\bÔÉß\rVariable\bÔö¶\vStruct\bÔÜ≥\nField\bÓúñ\rConstant\bÔõº\16Constructor\bÔê•\15EnumMember\bÔÖù\rFunction\bÔûî\vFolder\bÔùä\vMethod\6m\tText\bÔùæ\nColor\bÔ£ó\fSnippet\bÔÉÑ\fKeyword\bÔ†ä\tEnum\bÔÖù\nValue\bÔ¢ü\tUnit\bÓàü\0\0" },
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÚ\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\1\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\0\1\n\0\0\vpython\blua\vbibtex\bcss\thtml\tjson\nlatex\tscss\bvim\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["seoul256.vim"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/seoul256.vim",
    url = "https://github.com/junegunn/seoul256.vim"
  },
  ["stabilize.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14stabilize\frequire\0" },
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/stabilize.nvim",
    url = "https://github.com/luukvbaal/stabilize.nvim"
  },
  tagbar = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-repo.nvim"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/telescope-repo.nvim",
    url = "https://github.com/cljoly/telescope-repo.nvim"
  },
  ["telescope-zoxide"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/telescope-zoxide",
    url = "https://github.com/jvgrootveld/telescope-zoxide"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n©\4\0\0\v\0\31\0<6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\15\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\0045\5\r\0=\5\14\4=\4\16\0035\4\24\0005\5\23\0005\6\20\0005\a\18\0006\b\0\0'\n\1\0B\b\2\0029\b\17\b=\b\19\a=\a\v\0065\a\21\0006\b\0\0'\n\1\0B\b\2\0029\b\17\b=\b\19\a=\a\22\6=\6\f\5=\5\25\4=\4\26\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\27\1'\3\28\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\27\1'\3\29\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\27\1'\3\30\0B\1\2\1K\0\1\0\trepo\vzoxide\bfzf\19load_extension\fpickers\fbuffers\1\0\0\1\0\0\6n\1\0\0\1\0\0\n<c-d>\1\0\0\18delete_buffer\rdefaults\1\0\0\22vimgrep_arguments\1\t\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\v--trim\rmappings\6i\1\0\0\n<esc>\1\0\0\nclose\17path_display\1\0\0\1\2\0\0\fshorten\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n$\0\0\3\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0B\0\2\1K\0\1\0\1¿\vtoggleÿ\4\1\0\b\0\24\0$6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\2B\0\2\0016\0\0\0'\2\f\0B\0\2\0029\0\r\0\18\3\0\0009\1\14\0005\4\15\0B\1\3\0023\2\16\0007\2\17\0006\2\5\0009\2\18\0029\2\19\2'\4\20\0'\5\21\0'\6\22\0005\a\23\0B\2\5\0012\0\0ÄK\0\1\0\1\0\2\vsilent\2\fnoremap\2#<cmd>lua _lazygit_toggle()<CR>\14<leader>G\6n\20nvim_set_keymap\bapi\20_lazygit_toggle\0\1\0\3\14direction\nfloat\vhidden\2\bcmd\flazygit\bnew\rTerminal\24toggleterm.terminal\15float_opts\15highlights\1\0\2\vborder\vNormal\15background\vNormal\1\0\2\rwinblend\3\0\vborder\vcurved\nshell\6o\bvim\20shade_filetypes\1\0\t\18close_on_exit\2\17persist_size\2\20insert_mappings\2\20start_in_insert\2\20shade_terminals\1\14direction\nfloat\17hide_numbers\2\17open_mapping\n<c-\\>\tsize\3\20\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-better-whitespace"] = {
    config = { "\27LJ\2\nß\1\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0%let g:strip_whitespace_confirm=0&let g:better_whitespace_enabled=1%let g:strip_whitespace_on_save=1\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/vim-better-whitespace",
    url = "https://github.com/ntpeters/vim-better-whitespace"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-startify"] = {
    config = { "\27LJ\2\n`\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Alet g:startify_bookmarks = [ '~/.zshrc', '~/.config/nvim/' ]\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\n…\4\0\0\r\0 \2:6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0)\4\0\0B\1\3\0019\1\6\0'\3\b\0004\4\3\0009\5\t\0009\a\n\0005\t\v\0009\n\f\0B\n\1\2=\n\r\tB\a\2\0029\b\14\0B\b\1\0A\5\1\0?\5\0\0B\1\3\0019\1\6\0'\3\15\0009\4\16\0005\6\27\0009\a\17\0005\t\19\0009\n\18\0B\n\1\2=\n\20\t5\n\21\0009\v\22\0B\v\1\0?\v\1\0=\n\23\t5\n\24\0009\v\25\0B\v\1\0?\v\1\0=\n\26\tB\a\2\2=\a\28\0069\a\29\0005\t\30\0009\n\18\0B\n\1\2=\n\20\tB\a\2\2=\a\31\6B\4\2\0A\1\1\1K\0\1\0\6/\1\0\0\22wildmenu_renderer\6:\1\0\0\nright\24popupmenu_scrollbar\1\2\0\0\6 \tleft\23popupmenu_devicons\1\2\0\0\6 \16highlighter\1\0\0\24lua_fzy_highlighter\23popupmenu_renderer\17renderer_mux\rrenderer\24vim_search_pipeline\17fuzzy_filter\19lua_fzy_filter\1\0\1\nfuzzy\3\1\21cmdline_pipeline\vbranch\rpipeline\29use_python_remote_plugin\15set_option\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\3ÄÄ¿ô\4\5ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/Users/jarjumarvin/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip/loaders/from_vscode\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n©\4\0\0\v\0\31\0<6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\15\0005\4\5\0005\5\4\0=\5\6\0045\5\n\0005\6\b\0009\a\a\0=\a\t\6=\6\v\5=\5\f\0045\5\r\0=\5\14\4=\4\16\0035\4\24\0005\5\23\0005\6\20\0005\a\18\0006\b\0\0'\n\1\0B\b\2\0029\b\17\b=\b\19\a=\a\v\0065\a\21\0006\b\0\0'\n\1\0B\b\2\0029\b\17\b=\b\19\a=\a\22\6=\6\f\5=\5\25\4=\4\26\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\27\1'\3\28\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\27\1'\3\29\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\27\1'\3\30\0B\1\2\1K\0\1\0\trepo\vzoxide\bfzf\19load_extension\fpickers\fbuffers\1\0\0\1\0\0\6n\1\0\0\1\0\0\n<c-d>\1\0\0\18delete_buffer\rdefaults\1\0\0\22vimgrep_arguments\1\t\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\v--trim\rmappings\6i\1\0\0\n<esc>\1\0\0\nclose\17path_display\1\0\0\1\2\0\0\fshorten\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\nY\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\ttext\1\0\0\1\0\1\fspinner\nnoise\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21disable_filetype\1\0\0\1\3\0\0\20TelescopePrompt\bvim\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n$\0\0\3\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0B\0\2\1K\0\1\0\1¿\vtoggleÿ\4\1\0\b\0\24\0$6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\2B\0\2\0016\0\0\0'\2\f\0B\0\2\0029\0\r\0\18\3\0\0009\1\14\0005\4\15\0B\1\3\0023\2\16\0007\2\17\0006\2\5\0009\2\18\0029\2\19\2'\4\20\0'\5\21\0'\6\22\0005\a\23\0B\2\5\0012\0\0ÄK\0\1\0\1\0\2\vsilent\2\fnoremap\2#<cmd>lua _lazygit_toggle()<CR>\14<leader>G\6n\20nvim_set_keymap\bapi\20_lazygit_toggle\0\1\0\3\14direction\nfloat\vhidden\2\bcmd\flazygit\bnew\rTerminal\24toggleterm.terminal\15float_opts\15highlights\1\0\2\vborder\vNormal\15background\vNormal\1\0\2\rwinblend\3\0\vborder\vcurved\nshell\6o\bvim\20shade_filetypes\1\0\t\18close_on_exit\2\17persist_size\2\20insert_mappings\2\20start_in_insert\2\20shade_terminals\1\14direction\nfloat\17hide_numbers\2\17open_mapping\n<c-\\>\tsize\3\20\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: vim-better-whitespace
time([[Config for vim-better-whitespace]], true)
try_loadstring("\27LJ\2\nß\1\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0%let g:strip_whitespace_confirm=0&let g:better_whitespace_enabled=1%let g:strip_whitespace_on_save=1\bcmd\bvim\0", "config", "vim-better-whitespace")
time([[Config for vim-better-whitespace]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\3¿\tbody\15lsp_expandØ\1\0\2\a\1\b\0\0156\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\0059\6\0\1B\2\4\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\1¿\tname\vsource\1\0\4\rnvim_lsp\n[LSP]\fluasnip\14[Snippet]\tpath\v[Path]\vbuffer\r[Buffer]\tmenu\n%s %s\vformat\vstring\tkind≈\1\0\1\3\3\5\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\4\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\3¿\0¿\rcomplete\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\3¿\tjump\rjumpable\21select_prev_item\fvisibled\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprint•\v\1\2\t\0000\0∏\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0015\2\5\0=\1\6\0026\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\n\0006\a\0\0009\a\v\a9\a\f\a9\a\r\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\14\0006\a\0\0009\a\v\a9\a\f\a9\a\15\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\16\0'\a\17\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\18\0'\a\19\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\20\0006\a\0\0009\a\v\a9\a\f\a9\a\21\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\22\0006\a\0\0009\a\v\a9\a\f\a9\a\23\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\24\0'\a\25\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\26\0006\a\0\0009\a\v\a9\a\f\a9\a\27\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\28\0006\a\0\0009\a\v\a9\a\f\a9\a\29\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\30\0006\a\0\0009\a\v\a9\a\f\a9\a\31\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6 \0003\a!\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\"\0006\a\0\0009\a\v\a9\a\f\a9\a#\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6$\0006\a\0\0009\a\v\a9\a\f\a9\a%\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6&\0'\a'\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6(\0006\a\0\0009\a\v\a9\a\f\a9\a)\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6*\0'\a+\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6,\0'\a-\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6.\0'\a/\0\18\b\2\0B\3\5\1K\0\1\0 :PyrightOrganizeImports<cr>\15<leader>ii7:Telescope lsp_document_symbols theme=dropdown<cr>\14<leader>s@:Telescope lsp_dynamic_workspace_symbols theme=dropdown<cr>\14<leader>S\15formatting\14<leader>f1:Telescope lsp_references theme=dropdown<cr>\agr\16code_action\15<leader>ca\vrename\15<leader>rn\0\15<leader>wl\28remove_workspace_folder\15<leader>wr\25add_workspace_folder\15<leader>wa\19signature_help\n<C-k>6:Telescope lsp_implementations theme=dropdown<cr>\agi\nhover\6K\20type_definition\agt/:vsplit | lua vim.lsp.buf.definition()<cr>\bgdv9:belowright split | lua vim.lsp.buf.definition()<cr>\bgds\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\2\fnoremap\2\vsilent\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim•\19\1\0\18\0Å\1\0Í\0013\0\0\0005\1\1\0006\2\2\0009\2\3\0025\3\5\0=\3\4\0026\2\6\0'\4\a\0B\2\2\0026\3\6\0'\5\b\0B\3\2\0029\4\t\0025\6\r\0005\a\v\0003\b\n\0=\b\f\a=\a\14\0065\a\16\0005\b\15\0=\b\17\a=\a\18\0065\a\20\0005\b\19\0=\b\21\a3\b\22\0=\b\23\a=\a\24\0065\a\28\0009\b\25\0029\b\26\b9\b\27\bB\b\1\2=\b\29\a9\b\25\0029\b\26\b9\b\27\bB\b\1\2=\b\30\a=\a\26\0069\a\31\0029\a \a9\a!\a5\t#\0009\n\31\0029\n\"\nB\n\1\2=\n$\t9\n\31\0029\n%\nB\n\1\2=\n&\t9\n\31\0029\f\31\0029\f'\f)\14ˇˇB\f\2\0025\r(\0B\n\3\2=\n)\t9\n\31\0029\f\31\0029\f'\f)\14\1\0B\f\2\0025\r*\0B\n\3\2=\n+\t9\n\31\0029\f\31\0029\f,\fB\f\1\0025\r-\0B\n\3\2=\n.\t9\n\25\0029\n/\n=\n0\t9\n\31\0025\f2\0009\r\31\0029\r1\rB\r\1\2=\r3\f9\r\31\0029\r4\rB\r\1\2=\r5\fB\n\2\2=\n6\t9\n\31\0029\n7\n5\f8\0B\n\2\2=\n9\t9\n\31\0023\f:\0005\r;\0B\n\3\2=\n<\t9\n\31\0023\f=\0005\r>\0B\n\3\2=\n?\tB\a\2\2=\a\31\0069\a\25\0029\a@\a4\t\6\0005\nA\0>\n\1\t5\nB\0>\n\2\t5\nC\0>\n\3\t5\nD\0>\n\4\t5\nE\0>\n\5\tB\a\2\2=\a@\6B\4\2\0016\4\6\0'\6F\0B\4\2\0029\5G\2\18\a\5\0009\5H\5'\bI\0009\tJ\0045\vL\0005\fK\0=\fM\vB\t\2\0A\5\2\0015\5N\0006\6\2\0009\6O\0069\6P\6'\bQ\0'\tR\0006\n\2\0009\nS\n9\nT\n\18\v\5\0B\6\5\0016\6\2\0009\6O\0069\6P\6'\bQ\0'\tU\0006\n\2\0009\nS\n9\nV\n\18\v\5\0B\6\5\0016\6\2\0009\6O\0069\6P\6'\bQ\0'\tW\0006\n\2\0009\nS\n9\nX\n\18\v\5\0B\6\5\0016\6\2\0009\6O\0069\6P\6'\bQ\0'\tY\0'\nZ\0\18\v\5\0B\6\5\0013\6[\0006\a\6\0'\t\\\0B\a\2\0029\a]\a6\t\2\0009\t^\t9\t_\t9\t`\tB\t\1\0A\a\0\0026\b\6\0'\na\0B\b\2\0029\bb\b9\b\t\b5\nc\0=\6d\n=\ae\n5\vu\0005\fg\0005\rf\0=\rh\f5\rj\0005\14i\0=\14k\r=\rl\f5\rp\0006\14\2\0009\14m\0149\14n\14'\16o\0+\17\2\0B\14\3\2=\14q\r=\rr\f5\rs\0=\rt\f=\fv\v=\vw\nB\b\2\0016\b\6\0'\na\0B\b\2\0029\bx\b9\b\t\b5\nz\0005\vy\0=\v{\n5\v\127\0005\f}\0005\r|\0=\r~\f=\fÄ\v=\vw\n=\6d\nB\b\2\0012\0\0ÄK\0\1\0\vpython\1\0\0\ranalysis\1\0\0\1\0\4\19diagnosticMode\14workspace\20autoSearchPaths\2\26autoImportCompletions\2\27useLibraryCodeForTypes\2\14filetypes\1\0\1\24single_file_support\2\1\2\0\0\vpython\fpyright\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\17capabilities\14on_attach\1\0\0\vlua_ls\14lspconfig\29make_client_capabilities\rprotocol\blsp\25default_capabilities\17cmp_nvim_lsp\0\31:Telescope diagnostics<cr>\15<leader>fd\14goto_prev\15<leader>dk\14goto_next\15<leader>dj\15open_float\15diagnostic\14<leader>o\6n\bset\vkeymap\1\0\2\vsilent\2\fnoremap\2\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\1\0\1\tname\fcopilot\fsources\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\vinsert\vpreset\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\15formatting\vformat\0\vfields\1\0\0\1\3\0\0\tabbr\tkind\tview\fentries\1\0\0\1\0\2\20selection_order\16near_cursor\tname\vcustom\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\fluasnip\bcmp\frequire\1\4\0\0\tmenu\fmenuone\rnoselect\16completeopt\bopt\bvim\1\0\25\tFile\bÔúò\rProperty\bÔÇ≠\14Reference\bÔíÅ\vModule\bÔíá\18TypeParameter\bÔûÉ\14Interface\bÔÉ®\rOperator\bÔöî\nClass\bÔ†ñ\nEvent\bÔÉß\rVariable\bÔö¶\vStruct\bÔÜ≥\nField\bÓúñ\rConstant\bÔõº\16Constructor\bÔê•\15EnumMember\bÔÖù\rFunction\bÔûî\vFolder\bÔùä\vMethod\6m\tText\bÔùæ\nColor\bÔ£ó\fSnippet\bÔÉÑ\fKeyword\bÔ†ä\tEnum\bÔÖù\nValue\bÔ¢ü\tUnit\bÓàü\0\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: stabilize.nvim
time([[Config for stabilize.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14stabilize\frequire\0", "config", "stabilize.nvim")
time([[Config for stabilize.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nä\1\0\0\3\0\b\0\v6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\a\0B\0\2\1K\0\1\0\1\0\1\25show_current_context\2\nsetup\21indent_blankline\frequire\a¬¶\26indent_blankline_char\6g\bvim\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÚ\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\1\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\0\1\n\0\0\vpython\blua\vbibtex\bcss\thtml\tjson\nlatex\tscss\bvim\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-startify
time([[Config for vim-startify]], true)
try_loadstring("\27LJ\2\n`\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Alet g:startify_bookmarks = [ '~/.zshrc', '~/.config/nvim/' ]\bcmd\bvim\0", "config", "vim-startify")
time([[Config for vim-startify]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nè\3\0\0\6\0\23\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\5\0005\5\4\0=\5\6\4=\4\a\3=\3\t\0025\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0034\4\0\0=\4\15\0034\4\0\0=\4\16\0034\4\0\0=\4\17\0035\4\18\0=\4\19\3=\3\20\0025\3\21\0=\3\22\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\bfzf\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\14lualine_x\14lualine_c\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\15statusline\1\0\0\1\2\0\0\rneo-tree\1\0\3\25component_separators\5\23section_separators\5\ntheme\tauto\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: cybu.nvim
time([[Config for cybu.nvim]], true)
try_loadstring("\27LJ\2\nH\0\0\4\0\4\0\n6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\1B\2\1\1K\0\1\0\nsetup\tcybu\frequire\npcall\0", "config", "cybu.nvim")
time([[Config for cybu.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\nÆ\3\0\0\6\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\b\0005\5\a\0=\5\t\4=\4\n\3=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\15filesystem\1\0\4\16hide_hidden\1\20hide_gitignored\1\27use_libuv_file_watcher\2\24follow_current_file\2\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\rconflict\5\vstaged\5\runstaged\5\fignored\5\14untracked\5\frenamed\bÔïî\fdeleted\b‚úñ\rmodified\5\nadded\5\tname\1\0\0\1\0\1\26use_git_status_colors\2\1\0\3\23enable_diagnostics\1\22enable_git_status\2\23popup_border_style\frounded\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
try_loadstring("\27LJ\2\n…\4\0\0\r\0 \2:6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0)\4\0\0B\1\3\0019\1\6\0'\3\b\0004\4\3\0009\5\t\0009\a\n\0005\t\v\0009\n\f\0B\n\1\2=\n\r\tB\a\2\0029\b\14\0B\b\1\0A\5\1\0?\5\0\0B\1\3\0019\1\6\0'\3\15\0009\4\16\0005\6\27\0009\a\17\0005\t\19\0009\n\18\0B\n\1\2=\n\20\t5\n\21\0009\v\22\0B\v\1\0?\v\1\0=\n\23\t5\n\24\0009\v\25\0B\v\1\0?\v\1\0=\n\26\tB\a\2\2=\a\28\0069\a\29\0005\t\30\0009\n\18\0B\n\1\2=\n\20\tB\a\2\2=\a\31\6B\4\2\0A\1\1\1K\0\1\0\6/\1\0\0\22wildmenu_renderer\6:\1\0\0\nright\24popupmenu_scrollbar\1\2\0\0\6 \tleft\23popupmenu_devicons\1\2\0\0\6 \16highlighter\1\0\0\24lua_fzy_highlighter\23popupmenu_renderer\17renderer_mux\rrenderer\24vim_search_pipeline\17fuzzy_filter\19lua_fzy_filter\1\0\1\nfuzzy\3\1\21cmdline_pipeline\vbranch\rpipeline\29use_python_remote_plugin\15set_option\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\3ÄÄ¿ô\4\5ÄÄ¿ô\4\0", "config", "wilder.nvim")
time([[Config for wilder.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'copilot.lua'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
