local config = function()
    require("mason").setup()
end
return {
  {
    "mason-org/mason.nvim",
    config = config,
    opts = {},
  },
}
