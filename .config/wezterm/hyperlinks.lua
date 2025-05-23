local wezterm = require 'wezterm'

-- default hyperlinks settings. e.g. a click on a hyperlink can be opened
-- in the browser
local hyperlink_rules = wezterm.default_hyperlink_rules()

-- Handle something that looks like a feature, release or bugfix branch and link to Jira
-- e.g. feature/TICKET-123 will be opened in the browser to Jira
table.insert(hyperlink_rules, {
  regex = [[\b(feature\/)([A-Za-z]+(\-)\d+)\b]],
  format = 'https://jira.wh-i.at/browse/$2',
})

table.insert(hyperlink_rules, {
  regex = [[\b(bugfix\/)([A-Za-z]+(\-)\d+)\b]],
  format = 'https://jira.wh-i.at/browse/$2',
})

table.insert(hyperlink_rules, {
  regex = [[\b(release\/)([A-Za-z]+(\-)\d+)\b]],
  format = 'https://jira.wh-i.at/browse/$2',
})

return hyperlink_rules
