return {
    'folke/trouble.nvim',
    config = function()
        require("trouble").setup({})

        vim.keymap.set('n', '<leader>ttb', '<cmd>TroubleToggle quickfix<cr>',
            { silent = true, noremap = true, desc = 'Trouble Toggle Quickfix menu' })
    end
}
