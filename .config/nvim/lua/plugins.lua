local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
    install_path })
end

-- protected call
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- make packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = "single" }
    end,
  },
}

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- PLUGINS
  use 'morhetz/gruvbox' -- theme
  use 'ayu-theme/ayu-vim' -- theme 2
  use "savq/melange" -- theme 3
  use 'junegunn/seoul256.vim'

  use({
    "catppuccin/nvim",
    as = "catppuccin"
  })

  use { 'ellisonleao/glow.nvim', branch = 'main' }

  use { 'tpope/vim-fugitive' } -- git support
  use { 'airblade/vim-gitgutter' }
  use { 'tpope/vim-surround' } -- vim-surround for matching and changing parantheses etc.

  use { "lukas-reineke/indent-blankline.nvim", config=function()
    vim.g.indent_blankline_char = '¦'
    require("indent_blankline").setup {
      -- for example, context is off by default, use this to turn it on
      show_current_context = true,
    }
  end}

  -- copilot
  use {
    "zbirenbaum/copilot.lua",
    event = "VimEnter",
    config = function()
      vim.defer_fn(function()
        require("copilot").setup()
      end, 100)
    end,
  }

  use { 'mhinz/vim-startify', config=function()
    vim.cmd"let g:startify_bookmarks = [ '~/.zshrc', '~/.config/nvim/' ]"
  end}

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = { function()
      require('lualine').setup({
        options = { theme = 'auto', section_separators = '', component_separators = '', disabled_filetypes = { statusline = {"neo-tree"} } },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'diff', 'diagnostics' },
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = { 'location' }
        },
        extensions = { 'fzf' }
      })
    end }

  }

  use { 'nvim-lua/lsp-status.nvim' }


  use 'preservim/tagbar' -- use tagbar

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require 'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all"
        ensure_installed = { "python", "lua", "bibtex", "css", "html", "json", "latex", "scss", "vim" },
        highlight = {
          enable = true, additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = false
        }
      }
    end,
  }

  use 'romgrk/fzy-lua-native'

  use {
    'gelguy/wilder.nvim',
    requires = { 'romgrk/fzy-lua-native' },
    config = function()
      local wilder = require('wilder')
      wilder.setup({ modes = { ':', '/', '?' } })
      -- Disable Python remote plugin
      wilder.set_option('use_python_remote_plugin', 0)

      wilder.set_option('pipeline', {
        wilder.branch(
          wilder.cmdline_pipeline({
            fuzzy = 1,
            fuzzy_filter = wilder.lua_fzy_filter(),
          }),
          wilder.vim_search_pipeline()
        )
      })

      wilder.set_option('renderer', wilder.renderer_mux({
        [':'] = wilder.popupmenu_renderer({
          highlighter = wilder.lua_fzy_highlighter(),
          left = {
            ' ',
            wilder.popupmenu_devicons()
          },
          right = {
            ' ',
            wilder.popupmenu_scrollbar()
          },
        }),
        ['/'] = wilder.wildmenu_renderer({
          highlighter = wilder.lua_fzy_highlighter(),
        }),
      }))
    end,
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim', 'junegunn/fzf', 'junegunn/fzf.vim', 'cljoly/telescope-repo.nvim',
      'jvgrootveld/telescope-zoxide' } },
    config = function()
      local actions = require('telescope.actions')
      require('telescope').setup({
        defaults = {
          path_display = { 'shorten' },
          mappings = {
            i = {
              ['<esc>'] = actions.close
            }
          },
          vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--trim" -- add this value
          }
        },
        pickers = {
          buffers = {
            mappings = {
              i = {
                ["<c-d>"] = require("telescope.actions").delete_buffer,
              },
              n = {
                ["<c-d>"] = require("telescope.actions").delete_buffer,
              },
            }
          }
        }
      })
      require('telescope').load_extension('fzf') -- native  fuzzy support
      require('telescope').load_extension('zoxide') -- native  fuzzy support
      require('telescope').load_extension('repo') -- repos
    end,
  }

  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use {
    'ntpeters/vim-better-whitespace',
    config = function()
      vim.cmd("let g:strip_whitespace_on_save=1")
      vim.cmd("let g:better_whitespace_enabled=1")
      vim.cmd("let g:strip_whitespace_confirm=0")
    end,
  }

  use { 'windwp/nvim-autopairs', config = function()
    require('nvim-autopairs').setup {
      disable_filetype = { "TelescopePrompt", 'vim' }
    }
  end
  }

  use 'fedepujol/move.nvim'

  use { 'kyazdani42/nvim-web-devicons' }

  use { "akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      direction = 'float',
      shade_filetypes = {},
      shade_terminals = false,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = 'curved',
        winblend = 0,
        highlights = {
          border = 'Normal',
          background = 'Normal',
        },
      },
    })

    local Terminal  = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = 'float' })

    function _lazygit_toggle()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap("n", "<leader>G", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
  end }

  -- use({
  --   "ghillb/cybu.nvim",
  --   -- branch = "v1.x", -- won't receive breaking changes
  --   branch = "main", -- timely updates
  --   config = function()
  --     local ok, cybu = pcall(require, "cybu")
  --     if not ok then
  --       return
  --     end
  --     cybu.setup()
  --   end,
  -- })
  --
  use({
    "ghillb/cybu.nvim",
    branch = "main", -- timely updates
    -- branch = "v1.x", -- won't receive breaking changes
    requires = { "kyazdani42/nvim-web-devicons", "nvim-lua/plenary.nvim"}, -- optional for icon support
    config = function()
      local ok, cybu = pcall(require, "cybu")
      if not ok then
        return
      end
      cybu.setup()
    end,
  })

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- Lua
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
      }
    end
  }

  use {
    "luukvbaal/stabilize.nvim",
    config = function() require("stabilize").setup() end
  }

  -- LSP & CMP
  -- install language servers
  -- install LSP

  use { 'j-hui/fidget.nvim', config = function() require('fidget').setup {
      text = { spinner = 'noise' }
    }
  end }

  use { "neovim/nvim-lspconfig" }

  use { 'L3MON4D3/LuaSnip', config = function()
    require('luasnip/loaders/from_vscode').lazy_load()
  end }

  -- AUTOCOMPLETE

  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'saadparwaiz1/cmp_luasnip' }

  use {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function ()
      require("copilot_cmp").setup()
    end
  }

  use { "tamarin-prover/editors" }

  use { 'hrsh7th/nvim-cmp', config = function()
    local has_words_before = function()
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
    end

    local kind_icons = {
      Text = '',
      Method = 'm',
      Function = '',
      Constructor = '',
      Field = '',
      Variable = '',
      Class = '',
      Interface = '',
      Module = '',
      Property = '',
      Unit = '',
      Value = '',
      Enum = '',
      Keyword = '',
      Snippet = '',
      Color = '',
      File = '',
      Reference = '',
      Folder = '',
      EnumMember = '',
      Constant = '',
      Struct = '',
      Event = '',
      Operator = '',
      TypeParameter = '',
    }

    vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
    local cmp = require('cmp')
    local luasnip = require('luasnip')
    cmp.setup({
      snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
          luasnip.lsp_expand(args.body) -- For `luasnip` users.
        end,
      },
      view = {
        entries = { name = 'custom', selection_order = 'near_cursor' }
      },
      formatting = {
        fields = { 'abbr', 'kind' },
        format = function(entry, vim_item)
          vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind)
          vim_item.menu = ({
            nvim_lsp = '[LSP]',
            luasnip = '[Snippet]',
            buffer = '[Buffer]',
            path = '[Path]',
          })[entry.source.name]
          return vim_item
        end
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-1), { 'i', 'c' }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(1), { 'i', 'c' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<C-y>'] = cmp.config.disable,
        ['<C-e>'] = cmp.mapping {
          i = cmp.mapping.abort(),
          c = cmp.mapping.close(),
        },
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { 'i', 's' }),

        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { 'i', 's' }),
      }),
      sources = cmp.config.sources({
        { name = 'copilot' },
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
      })
    })

    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '' } }))

    -- set up LSP
    -- Mappings.
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    local opts = { noremap = true, silent = true }
    vim.keymap.set('n', '<leader>o', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_next, opts)
    vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', '<leader>fd', ':Telescope diagnostics<cr>', opts)

    -- Use an on_attach function to only map the following keys
    -- after the language server attaches to the current buffer
    local on_attach = function(client, bufnr)
      -- Enable completion triggered by <c-x><c-o>
      vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

      -- Mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      local bufopts = { noremap = true, silent = true, buffer = bufnr }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
      vim.keymap.set('n', 'gds', ":belowright split | lua vim.lsp.buf.definition()<cr>", bufopts)
      vim.keymap.set('n', 'gdv', ":vsplit | lua vim.lsp.buf.definition()<cr>", bufopts)
      vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
      vim.keymap.set('n', 'gi', ':Telescope lsp_implementations theme=dropdown<cr>', bufopts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
      vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
      vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
      vim.keymap.set('n', '<leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, bufopts)
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
      vim.keymap.set('n', 'gr', ':Telescope lsp_references theme=dropdown<cr>', bufopts)
      vim.keymap.set('n', '<leader>f', vim.lsp.buf.formatting, bufopts)

      vim.keymap.set('n', '<leader>S', ':Telescope lsp_dynamic_workspace_symbols theme=dropdown<cr>', bufopts)
      vim.keymap.set('n', '<leader>s', ':Telescope lsp_document_symbols theme=dropdown<cr>', bufopts)
      vim.keymap.set('n', '<leader>ii', ':PyrightOrganizeImports<cr>', bufopts)
    end

    local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

    require("lspconfig")['lua_ls'].setup({
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = { 'vim' },
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
          },
        },
      },
    })

    -- require("lspconfig")['jedi_language_server'].setup({
    --   on_attach = on_attach,
    --   capabilities = capabilities,
    -- })

    require("lspconfig")['pyright'].setup {
      filetypes = {"python"},
      single_file_support = true,
      settings = {
        python = {
          analysis = {
            autoImportCompletions = true,
            autoSearchPaths = true,
            diagnosticMode = "workspace",
            useLibraryCodeForTypes = true
          }
        }
      },
      on_attach = on_attach
    }

  end
  }

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config=function ()
      require("neo-tree").setup({
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = false,
        default_component_configs = {
          name = {
            use_git_status_colors = true
          },
          git_status = {
            symbols = {
              -- Change type
              added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
              modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
              deleted   = "✖",-- this can only be used in the git_status source
              renamed   = "",-- this can only be used in the git_status source
              -- Status type
              untracked = "",
              ignored   = "",
              unstaged  = "",
              staged    = "",
              conflict  = "",
            }
          }
        },
        filesystem = {
          follow_current_file = true,
          use_libuv_file_watcher = true,
          hide_gitignored = false,
          hide_hidden = false
        }
      })
    end
  }
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
