return {
  'm4xshen/hardtime.nvim',
  dependencies = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
  opts = {
    restriction_mode = 'block',
    resetting_keys = {
      -- adding h/j/k/l to list of resetting keys so that navigating with them
      -- does not block because of repeating
      ['h'] = { 'n', 'x' },
      ['j'] = { 'n', 'x' },
      ['k'] = { 'n', 'x' },
      ['l'] = { 'n', 'x' },
      ['1'] = { 'n', 'x' },
      ['2'] = { 'n', 'x' },
      ['3'] = { 'n', 'x' },
      ['4'] = { 'n', 'x' },
      ['5'] = { 'n', 'x' },
      ['6'] = { 'n', 'x' },
      ['7'] = { 'n', 'x' },
      ['8'] = { 'n', 'x' },
      ['9'] = { 'n', 'x' },
      ['c'] = { 'n' },
      ['C'] = { 'n' },
      ['d'] = { 'n' },
      ['x'] = { 'n' },
      ['X'] = { 'n' },
      ['y'] = { 'n' },
      ['Y'] = { 'n' },
      ['p'] = { 'n' },
      ['P'] = { 'n' },
      ['gp'] = { 'n' },
      ['gP'] = { 'n' },
      ['.'] = { 'n' },
      ['='] = { 'n' },
      ['<'] = { 'n' },
      ['>'] = { 'n' },
      ['J'] = { 'n' },
      ['gJ'] = { 'n' },
      ['~'] = { 'n' },
      ['g~'] = { 'n' },
      ['gu'] = { 'n' },
      ['gU'] = { 'n' },
      ['gq'] = { 'n' },
      ['gw'] = { 'n' },
      ['g?'] = { 'n' },
    },
  },
}