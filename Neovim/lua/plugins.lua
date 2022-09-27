local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim-plugged')

Plug 'dracula/vim'
Plug 'neovim/nvim-lspconfig'

vim.call('plug#end')

