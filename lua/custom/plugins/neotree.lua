return {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },

    config = function()
        require("neo-tree").setup({
            popup_border_style = "rounded",
            window = {
                position = "current",
            },
        })

        vim.keymap.set('n', '<leader>pv', '<cmd>Neotree<CR>', { desc = 'Show Explorer' })
    end
}
