return {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },

    opts = {
        popup_border_style = "rounded",
        window = {
            position = "current",
        },

    },

    config = function()
        vim.keymap.set('n', '<leader>pv', '<cmd>Neotree<CR>', { desc = 'Show Explorer' })
    end
}
