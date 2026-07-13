local config = function()
  vim.cmd([[ let g:airline_theme = 'owo' ]])
end
return {
  {
    "vim-airline/vim-airline",
    name = "airline",
    config = config
  },
  {
    "vim-airline/vim-airline-themes",
    name = "airline-themes",
    config = config
  }
}
