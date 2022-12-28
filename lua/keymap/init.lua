vim.g.mapleader = ";"
vim.cmd [[nnoremap <F10> :NERDTree<CR>]]
vim.cmd [[autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
\ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif]]

vim.cmd [[nnoremap <F9> :NERDTreeToggle<CR>]]

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fl', builtin.lsp_references, {})
vim.cmd [[imap <C-BS> <C-W>]]
