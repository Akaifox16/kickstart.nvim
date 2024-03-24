return {
    'ThePrimeagen/harpoon',
    branch = "harpoon2",

    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
    config = function()
        local harpoon = require('harpoon')
        harpoon:setup({})

        vim.keymap.set('n', '<C-a>', function() harpoon:list():append() end, { desc = 'Mark file to Harpoon buffer' })
        vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
            { desc = 'Toggle Harpoon menu' })

        vim.keymap.set('n', '<C-h>', function() harpoon:list():select(1) end, { desc = 'Navigate to Harpoon mark no.1' })
        vim.keymap.set('n', '<C-j>', function() harpoon:list():select(2) end, { desc = 'Navigate to Harpoon mark no.2' })
        vim.keymap.set('n', '<C-k>', function() harpoon:list():select(3) end, { desc = 'Navigate to Harpoon mark no.3' })
        vim.keymap.set('n', '<C-l>', function() harpoon:list():select(4) end, { desc = 'Navigate to Harpoon mark no.4' })
    end
}
