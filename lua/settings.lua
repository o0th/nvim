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

-- Mapping
vim.api.nvim_set_keymap('n', '<Leader>o', ':Telescope find_files theme=get_ivy<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>]', ':bn<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>[', ':bp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader><BS>', ':bd<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader><BS><BS>', ':bd!<CR>', { noremap = true })

