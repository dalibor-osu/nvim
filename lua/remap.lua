vim.g.mapleader = " "
vim.keymap.set('n', '<leader>d', vim.lsp.buf.hover) -- why the fuck is this so slow

vim.cmd([[
    map <leader>e :lua vim.diagnostic.open_float(0, {scope = "line"})<CR>
    map <leader>gt :bnext<CR>
    map <leader>gT :bprev<CR>
    map <leader>bd :bd<CR>
]])
