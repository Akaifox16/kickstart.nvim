return {
    'folke/todo-comments.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'folke/trouble.nvim'
    },

    config = function()
        local todo = require('todo-comments')
        todo.setup {
            signs = false,
        }

        vim.keymap.set('n', ']t', function()
            todo.jump_next { keywords = { "TODO", "FIX" } }
        end, { desc = 'Next todo comment' })
        vim.keymap.set('n', '[t', function()
            todo.jump_prev { keywords = { "TODO", "FIX" } }
        end, { desc = 'Prev todo comment' })

        vim.keymap.set('n', '<leader>tdq', '<cmd>TodoQuickFix<CR>',
            { desc = 'Show Todo Quickfix menu' })
        vim.keymap.set('n', '<leader>ttd', '<cmd>TodoTelescope keywords=TODO,FIX,WARNING<CR>',
            { desc = 'Show Todo in Telescope window' })
    end
}
