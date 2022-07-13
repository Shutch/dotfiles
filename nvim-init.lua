vim.opt.clipboard = 'unnamedplus'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = '88'
vim.opt.wrap = false

vim.g.mapleader = " "  -- Set Leader to space

-- keybindings
vim.keymap.set('n', '<Leader>ff', '<Cmd>Telescope find_files<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>fg', '<Cmd>Telescope live_grep<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>fb', '<Cmd>Telescope buffers<CR>', { noremap = true })

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- plugins start --
  -- colorscheme
  use {
    'navarasu/onedark.nvim',
	config = {
	  require('onedark').setup { style = 'darker' },
	  require('onedark').load()
	}
  }

  -- fuzzy file finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    config = {
        require("nvim-tree").setup()
    }
  }

  -- advanced highlighting, folding,
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- LSP pre-made configs
  use {
    "williamboman/nvim-lsp-installer",
    'neovim/nvim-lspconfig',
    config = {
      require('nvim-lsp-installer').setup()
    }
  }

  -- editorconfig file reading
  use {
    'gpanders/editorconfig.nvim'
  }

  -- lazygit floating window
  use {
    'kdheepak/lazygit.nvim'
  }

  -- status line
  use {
    'feline-nvim/feline.nvim',
    config = {
      require('feline').setup()
    }
  }

  -- plugins end --
  if packer_bootstrap then
    require('packer').sync()
  end
end)

