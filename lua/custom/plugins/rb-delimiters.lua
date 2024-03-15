return {
    'HiPhish/rainbow-delimiters.nvim',

    config = function()
        local rainbow = require('rainbow-delimiters')

        require('rainbow-delimiters.setup').setup {
            strategy = {
                [''] = rainbow.strategy['global'],
                commonlisp = rainbow.strategy['local'],
            },
            query = {
                [''] = 'rainbow-delimiters',
                lua = 'rainbow-blocks',
                groovy = 'rainbow-parens',
            },
            highlight = {
                'RainbowDelimiterRed',
                'RainbowDelimiterYellow',
                'RainbowDelimiterBlue',
                'RainbowDelimiterOrange',
                'RainbowDelimiterGreen',
                'RainbowDelimiterViolet',
                'RainbowDelimiterCyan',
            },
        }
    end
}
