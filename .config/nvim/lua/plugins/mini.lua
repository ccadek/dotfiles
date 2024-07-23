return {
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [']quote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()

    local starter = require 'mini.starter'

    local basicActions = 'Basic actions'

    -- function to add items to mini.starter
    --
    local function openItemAction(configName)
      return {
        name = configName,
        action = 'e ~/.config/' .. configName, -- open path
        section = 'Bookmarks',
      }
    end

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
        starter.sections.telescope(),
        { name = 'Edit new buffer', action = 'enew', section = basicActions },
        { name = 'Quit Neovim', action = 'qall', section = basicActions },
      },
      footer = '',
      content_hooks = {
        starter.gen_hook.adding_bullet(),
        starter.gen_hook.indexing('all', { basicActions }),
        starter.gen_hook.aligning('center', 'center'),
      },
    }

    -- Simple and easy statusline.
    --  You could remove this setup call if you don't like it,
    --  and try some other statusline plugin
    local statusline = require 'mini.statusline'
    -- set use_icons to true if you have a Nerd Font
    statusline.setup { use_icons = vim.g.have_nerd_font }

    -- You can configure sections in the statusline by overriding their
    -- default behavior. For example, here we set the section for
    -- cursor location to LINE:COLUMN
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end

    -- ... and there is more!
    --  Check out: https://github.com/echasnovski/mini.nvim
  end,
}
