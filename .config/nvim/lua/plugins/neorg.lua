return {}

--[[return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  opts = {
    load = {
      ["core.ui"] = {},
      ["core.tempus"] = {},
      ["core.defaults"] = {}, -- default bevhavior
      ["core.concealer"] = {}, -- pretty icons
      ["core.dirman"] = { -- manage neorg workspace
        config = {
          workspaces = {
            notes = "~/.neorg",
          },
        },
      },
    },
  },
}]]
--
