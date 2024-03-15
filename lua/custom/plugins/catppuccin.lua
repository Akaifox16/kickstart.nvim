return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,

    opts = {
        background = {
            dark = 'macchiato'
        }
    },

    config = function()
        vim.cmd.colorscheme('catppuccin')
    end
}
