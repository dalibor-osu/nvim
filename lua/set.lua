vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.shiftwidth = 4     -- Indentation amount for `<` and `>` commands
vim.opt.tabstop = 4        -- Number of spaces tabs count for
vim.opt.softtabstop = 4    -- Number of spaces for editing (e.g., backspace)
vim.opt.smartindent = true -- Automatically indent new lines

-- Auto format on save
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        local mode = vim.api.nvim_get_mode().mode
        if vim.bo.modified == true and mode == 'n' then
            vim.cmd('lua vim.lsp.buf.format()')
        else
        end
    end
})
