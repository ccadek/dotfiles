local wezterm = require 'wezterm'

-- default hyperlinks settings. e.g. a click on a hyperlink can be opened
-- in the browser
local hyperlink_rules = wezterm.default_hyperlink_rules()

-- Handle something that looks like a ticket number clickable.
-- e.g. TICKET-123 will be opened in the browser
table.insert(hyperlink_rules, {
  regex = [[\b[A-Z]+-(\d+)\b]],
  format = 'https://jira.wh-i.at/browse/$0',
})

-- make username/project paths clickable. this implies paths like the following are for github.
-- ( "nvim-treesitter/nvim-treesitter" | wbthomason/packer.nvim | wez/wezterm | "wez/wezterm.git" )
-- as long as a full url hyperlink regex exists above this it should not match a full url to
-- github or gitlab / bitbucket (i.e. https://gitlab.com/user/project.git is still a whole clickable url)
table.insert(hyperlink_rules, {
  regex = [[["]?([\w\d]{1}[-\w\d]+)(/){1}([-\w\d\.]+)["]?]],
  format = 'https://www.github.com/$1/$3',
})

return hyperlink_rules
