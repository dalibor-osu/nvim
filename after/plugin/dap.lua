local dap = require('dap')

dap.adapters.coreclr = {
    type = 'executable',
    command = '/opt/netcoredbg/netcoredbg',
    args = { '--interpreter=vscode' }
}

dap.configurations.cs = {
    {
        type = "coreclr",
        name = "Launch - netcoredbg",
        request = "launch",
        program = function()
            return vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/net9.0/OsuServer.dll', 'file')
        end,
    },
}

require("dapui").setup()
