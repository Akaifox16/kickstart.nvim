-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Install lazy.nvim
require('lazy-bootstrap')

-- Plugins
require('lazy-setup')

-- Options
require('options')

-- Basic Keymaps
require('keymaps')

-- Setup telescope
require('telescope-setup')

-- Setup tree-sitter
require('tree-sitter-setup')

-- Setup LSP
require('lsp-setup')

-- Setup auto completions
require('cmp-setup')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
