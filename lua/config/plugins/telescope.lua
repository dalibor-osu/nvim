local config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>f', builtin.find_files, {})
    vim.keymap.set('n', '<leader>g', builtin.git_files, {})

    require('telescope').setup {
        defaults = {
            file_ignore_patterns = {
                "node_modules/",
                ".git/",
                "dist/",
                "build/",
                "bin/",
                "obj/",
                "%.lock",
            },
        }
    }
end

return {
    'nvim-telescope/telescope.nvim',
    config = config,
    tag = 'v0.2.0',
    dependencies = { 'nvim-lua/plenary.nvim' }
}
