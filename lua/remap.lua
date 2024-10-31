vim.g.mapleader = " "
vim.keymap.set('n', '<leader>d', vim.lsp.buf.hover) -- why the fuck is this so slow

vim.cmd([[
    nnoremap <C-Space>, :-tabmove<CR>
    nnoremap <C-Space>. :+tabmove<CR>
    nnoremap <C-Space>f :Neotree<CR>
    map <leader>e :lua vim.diagnostic.open_float(0, {scope = "line"})<CR>
    map <leader>. :tabn<CR>
    map <leader>, :tabp<CR>
    map <leader>= :tabnew<CR>
    map <leader>- :tabclose<CR>
    map <leader>1 :1tabnext<CR>
    map <leader>2 :2tabnext<CR>
    map <leader>3 :3tabnext<CR>
    map <leader>4 :4tabnext<CR>
    map <leader>5 :5tabnext<CR>
    map <leader>6 :6tabnext<CR>
    map <leader>7 :7tabnext<CR>
    map <leader>8 :8tabnext<CR>
    map <leader>9 :9tabnext<CR>
    map <leader>0 :10tabnext<CR>
    map <C-S-f> :Neotree close<CR>
    nnoremap <A-j> :m +1<CR>==
    nnoremap <A-k> :m -2<CR>==
    vnoremap <A-k> :m '<-2<CR>gv=gv
    vnoremap <A-j> :m '>+1<CR>gv=gv
]])
