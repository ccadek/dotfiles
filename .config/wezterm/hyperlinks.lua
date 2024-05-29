local wezterm = require("wezterm")

-- default hyperlinks settings. e.g. a click on a hyperlink can be opened
-- in the browser
local hyperlink_rules = wezterm.default_hyperlink_rules()

-- Handle something that looks like a ticket number clickable.
-- e.g. TICKET-123 will be opened in the browser
table.insert(hyperlink_rules, {
	regex = [[\b[A-Z]+-(\d+)\b]],
	format = "https://jira.wh-i.at/browse/$0",
})

return hyperlink_rules
