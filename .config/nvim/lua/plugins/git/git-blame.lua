-- Adds git-blame capabilities. Use :GitBlameToggle
vim.pack.add { 'https://github.com/f-person/git-blame.nvim' }
require('gitblame').setup {
  enabled = true,
}
