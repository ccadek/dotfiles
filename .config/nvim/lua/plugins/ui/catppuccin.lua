return {
  'catppuccin/nvim',
  priority = 1000,
  init = function()
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
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.cmd.colorscheme 'catppuccin'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
}
