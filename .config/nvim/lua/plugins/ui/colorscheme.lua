vim.pack.add { 'https://github.com/catppuccin/nvim' }

require('catppuccin').setup {
  flavour = 'auto', -- latte, frappe, macchiato, mocha
  background = { -- :h background
    light = 'latte',
    dark = 'mocha',
  },
  custom_highlights = function(colors)
    return {
      -- Both colors taken from folke/tokyonight theme.
      CursorLineNr = { fg = '#ff966c' }, -- set the current line number to orange
      LineNr = { fg = '#a8aecb' }, -- set all other line numbers to some shade of grey/blue. Apparently it is called 'Logan'
    }
  end,
}

vim.cmd.colorscheme 'catppuccin'

-- You can configure highlights by doing something like:
vim.cmd.hi 'Comment gui=none'
