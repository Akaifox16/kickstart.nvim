return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,

  opts = {
    background = {
      dark = 'macchiato',
    },
    transparent_background = true,
    integrations = {
      cmp = true,
      gitsigns = true,
      treesitter = true,
      which_key = true,
      lsp_trouble = true,
      telescope = {
        enabled = true,
      },
      mason = true,
      harpoon = true,
    },
  },

  config = function()
    vim.cmd.colorscheme 'catppuccin'

    vim.cmd.hi 'Comment gui=none'
  end,
}
