return   {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config=function()
    require("catppuccin").setup({
      transparent_background = true
    })
    vim.cmd.colorscheme "catppuccin"
    vim.g.catppuccin_flavour = "mocha"
  end
} 
