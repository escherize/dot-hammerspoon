local mash = {"ctrl", "cmd"}
local mash_app   = {"cmd", "alt", "ctrl"}
local mash_shift = {"ctrl", "alt", "shift"}

-- application help
local function open_help()
   help_str =
      "D - [D]ictionary, " ..
      ", - Terminal[,] " ..
      "M - Chro[M]e, " ..
      "K - Emac[K]s, " ..
      "L - S[L]ack, " ..
      "O - Trell[O], " ..
      ". - all"
   -- "3 - nothing yet\n" ..
   -- "4 - nothing yet\n" ..
   -- "5 - nothing yet\n" ..
   -- "6 - nothing yet."
   hs.alert.show(help_str, 2)
end

hs.hotkey.bind(mash_app, '/', open_help)

-- Launch applications
hs.hotkey.bind(mash_app, 'D', function () hs.application.launchOrFocus("Dictionary") end)
hs.hotkey.bind({"cmd", "shift"}, 'k', function () hs.application.launchOrFocus("iterm") end)
hs.hotkey.bind(mash_app, 'm', function () hs.application.launchOrFocus("Google Chrome") end)
hs.hotkey.bind(mash_app, 'k', function () hs.application.launchOrFocus("Emacs") end)
hs.hotkey.bind(mash_app, 'l', function () hs.application.launchOrFocus("Slack") end)
hs.hotkey.bind(mash_app, 'o', function () hs.application.launchOrFocus("Trello X") end)

-- Window Hints
hs.hotkey.bind(mash_app, '.', hs.hints.windowHints)
