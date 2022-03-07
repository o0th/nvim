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

vim.cmd 'set smartindent'

-- Mapping
vim.api.nvim_set_keymap('n', '<Leader>o', ':Telescope find_files theme=get_ivy<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>]', ':bn<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>[', ':bp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader><BS>', ':bd<CR>', { noremap = true })

