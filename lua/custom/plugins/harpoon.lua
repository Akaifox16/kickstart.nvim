return {
    'ThePrimeagen/harpoon',

    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local ui = require('harpoon.ui')
        local mark = require('harpoon.mark')

        vim.keymap.set('n', '<C-a>', mark.add_file, { desc = 'Mark file to Harpoon buffer' })
        vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = 'Toggle Harpoon menu' })

        vim.keymap.set('n', '<C-h>', function() ui.nav_file(1) end, { desc = 'Navigate to Harpoon mark no.1' })
        vim.keymap.set('n', '<C-j>', function() ui.nav_file(2) end, { desc = 'Navigate to Harpoon mark no.2' })
        vim.keymap.set('n', '<C-k>', function() ui.nav_file(3) end, { desc = 'Navigate to Harpoon mark no.3' })
        vim.keymap.set('n', '<C-l>', function() ui.nav_file(4) end, { desc = 'Navigate to Harpoon mark no.4' })
    end
}
