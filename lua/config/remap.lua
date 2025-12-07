vim.g.mapleader = " "
vim.keymap.set('n', '<leader>d', vim.lsp.buf.hover)

vim.cmd([[
    nnoremap <C-Space>, :-tabmove<CR>
    nnoremap <C-Space>. :+tabmove<CR>
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
    nnoremap <A-j> :m +1<CR>==
    nnoremap <A-k> :m -2<CR>==
    vnoremap <A-k> :m '<-2<CR>gv=gv
    vnoremap <A-j> :m '>+1<CR>gv=gv
    nnoremap <leader>lf :lua vim.lsp.buf.format()<CR>
    vnoremap <leader>lc :lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>

    let g:coq_settings = { "keymap.recommended": v:false }
    ino <silent><expr> <Esc>   pumvisible() ? "\<C-e><Esc>" : "\<Esc>"
    ino <silent><expr> <C-c>   pumvisible() ? "\<C-e><C-c>" : "\<C-c>"
    ino <silent><expr> <BS>    pumvisible() ? "\<C-e><BS>"  : "\<BS>"
    ino <silent><expr> <Tab>    pumvisible() ? (complete_info().selected == -1 ? "\<C-e><Tab>" : "\<C-y>") : "\<Tab>"
    ino <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<BS>"
    ino <silent><expr> <CR> pumvisible() ? "\<CR><CR>" : "\<CR>"
]])

-- Accept lsp quickfix
vim.keymap.set('n', '<leader>qf',
    function()
        vim.lsp.buf.code_action({
            filter = function(a) return a.isPreferred end,
            apply = true
        })
    end,
    { noremap = true, silent = true }
)
