return {
  -- Common
  { 'lambdalisue/nerdfont.vim' },

  {
    'nvim-telescope/telescope-project.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
    },
  },

  { 'MunifTanjim/nui.nvim' },

  {
    'rcarriga/nvim-notify',
    config = function()
      require("notify").setup {
        stages = 'fade_in_slide_out',
        background_color = 'FloatShadow',
        timeout = 0,
      }
    end
  },

  -- lsp
  {
    'williamboman/mason.nvim'
  },

  {
    'williamboman/mason-lspconfig.nvim'
  },

  -- Visual

  { 'nvim-tree/nvim-web-devicons' },

  {
    'nvie/vim-flake8',
    ft = { 'python' }
  },

  {
    'tell-k/vim-autopep8',
    ft = { 'python' }
  },


  {
    -- search in v-mode range
    'thinca/vim-visualstar'
  },

  {
    'tyru/open-browser.vim',
    config = function()
      vim.g.netrw_nogx = 1  -- disable netrw's gx mapping.
      vim.api.nvim_set_keymap('n', 'gx', '<Plug>(openbrowser-smart-search)', { noremap = false, silent = true })
    end
  },

  {
    'vimtry1/today.vim'
  },


  {
    'kylechui/nvim-surround',
    config = function()
      require("nvim-surround").setup({})
    end
  },

  {
    'hrsh7th/nvim-cmp'
  },

  {
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup()
    end
  },

  {
    'folke/zen-mode.nvim',
    config = function()
      vim.keymap.set("n", "<C-z>", ":ZenMode<CR>")
    end
  },

  {
    'kevinhwang91/promise-async'
  },

  { 'ellisonleao/gruvbox.nvim' },
  { 'catppuccin/nvim' },
  { 'sainnhe/everforest' },
  { 'folke/tokyonight.nvim' },
  { 'jacoborus/tender.vim' }

}
