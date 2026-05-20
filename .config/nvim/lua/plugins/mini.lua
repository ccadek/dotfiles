-- [[ mini.nvim ]]
--  A collection of various small independent plugins/modules
vim.pack.add { 'https://github.com/nvim-mini/mini.nvim' }

-- Better Around/Inside textobjects
--
-- Examples:
--  - va)  - [V]isually select [A]round [)]paren
--  - yiiq - [Y]ank [I]nside [I]+1 [Q]uote
--  - ci'  - [C]hange [I]nside [']quote
require('mini.ai').setup {
  -- NOTE: Avoid conflicts with the built-in incremental selection mappings on Neovim>=0.12 (see `:help treesitter-incremental-selection`)
  mappings = {
    around_next = 'aa',
    inside_next = 'ii',
  },
  n_lines = 500,
}

-- Add/delete/replace surroundings (brackets, quotes, etc.)
--
-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
-- - sd'   - [S]urround [D]elete [']quotes
-- - sr)'  - [S]urround [R]eplace [)] [']
require('mini.surround').setup()

-- Simple and easy statusline.
--  You could remove this setup call if you don't like it,
--  and try some other statusline plugin
local statusline = require 'mini.statusline'
-- Set `use_icons` to true if you have a Nerd Font
statusline.setup { use_icons = vim.g.have_nerd_font }

-- You can configure sections in the statusline by overriding their
-- default behavior. For example, here we set the section for
-- cursor location to LINE:COLUMN
---@diagnostic disable-next-line: duplicate-set-field
statusline.section_location = function() return '%2l:%-2v' end

require 'mini.starter'

local basicActionsSection = 'Basic actions'
local bookMarksSection = 'Bookmarks'

-- function to add items to mini.starter
--
local function openItemAction(configName)
  return {
    name = configName,
    action = 'e ~/.config/' .. configName, -- open path
    section = bookMarksSection,
  }
end

local starter = require 'mini.starter'

starter.setup {
  header = '                                                                       \n'
    .. '                                                                     \n'
    .. '       ████ ██████           █████      ██                     \n'
    .. '      ███████████             █████                             \n'
    .. '      █████████ ███████████████████ ███   ███████████   \n'
    .. '     █████████  ███    █████████████ █████ ██████████████   \n'
    .. '    █████████ ██████████ █████████ █████ █████ ████ █████   \n'
    .. '  ███████████ ███    ███ █████████ █████ █████ ████ █████  \n'
    .. ' ██████  █████████████████████ ████ █████ █████ ████ ██████ \n'
    .. '                                                                       ',
  items = {
    openItemAction 'bat',
    openItemAction 'fish',
    openItemAction 'nvim',
    openItemAction 'wezterm',
    openItemAction 'zellij',
    --starter.sections.telescope(),
    { name = 'Edit new buffer', action = 'enew', section = basicActionsSection },
    { name = 'Quit Neovim', action = 'qall', section = basicActionsSection },
  },
  evaluate_single = true,
  footer = '',
  content_hooks = {
    starter.gen_hook.adding_bullet(),
    starter.gen_hook.aligning('center', 'top'),
  },
}
