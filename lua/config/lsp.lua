local lsp_dir = vim.fn.stdpath("config") .. "/lsp"

local function get_lsp_file_names()
  local names = {}
  for _, f in ipairs(vim.fn.readdir(lsp_dir)) do
    local base = f:match("^(.*)%.lua$")
    if base then
      table.insert(names, base)
    end
  end
  return names
end

vim.lsp.enable(get_lsp_file_names())

vim.diagnostic.config({
    -- virtual_lines = true,
    virtual_text = false,
    underline = false,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "single",
        source = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
})
