-- Colorscheme
vim.cmd 'colorscheme dracula'

-- Syntax
vim.cmd 'syntax enable'

-- Termguicolors
vim.cmd 'set termguicolors'

-- Cursorline
vim.cmd 'set cursorline'

-- Show numbers
vim.cmd 'set number'

-- Show signcolum
vim.cmd 'set signcolumn=yes'

-- Smart indent
vim.cmd 'set smartindent'

-- Enable mouse support
vim.cmd 'set mouse=a'

-- Some servers have issues with backup files, see #649.
vim.cmd 'set nobackup'
vim.cmd 'set nowritebackup'

-- Disable swap files
vim.cmd 'set noswapfile'

-- Set scrolloff
vim.cmd 'set scrolloff=12'

-- Set Leader
vim.cmd 'let mapleader=" "'

-- Use system clipboard
vim.cmd 'set clipboard+=unnamedplus'

--
-- Mapping
--

vim.api.nvim_set_keymap('n', '<Leader>f', ':Telescope find_files theme=get_ivy<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>g', ':Telescope git_files theme=get_ivy<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>j', ':bn<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>l', ':bp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>wq', ':wq<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>c', ':bd<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', 'i', '<Up>', { noremap = false })
vim.api.nvim_set_keymap('n', 'j', '<Left>', { noremap = false })
vim.api.nvim_set_keymap('n', 'k', '<Down>', { noremap = false })
vim.api.nvim_set_keymap('v', 'i', '<Up>', { noremap = false })
vim.api.nvim_set_keymap('v', 'j', '<Left>', { noremap = false })
vim.api.nvim_set_keymap('v', 'k', '<Down>', { noremap = false })

vim.api.nvim_set_keymap('n', 'h', 'i', { noremap = true })
vim.api.nvim_set_keymap('n', 'H', 'I', { noremap = true })
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })

vim.api.nvim_set_keymap('n', '<S-k>', ':m+<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-i>', ':m-2<CR>', { noremap = true, silent = true })
