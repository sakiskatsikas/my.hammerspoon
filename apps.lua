local function toggleApplication(name)
  local app = hs.application.find(name)
  if not app or app:isHidden() then
    hs.application.launchOrFocus(name)
  elseif hs.application.frontmostApplication() ~= app then
    app:activate()
  else
    app:hide()
  end
end

hs.hotkey.bind(hyper, "c", function() toggleApplication("Google Chrome") end)
hs.hotkey.bind(hyper, "f", function() toggleApplication("Finder") end)
hs.hotkey.bind(hyper, "s", function() toggleApplication("Slack") end)
hs.hotkey.bind(hyper, "v", function() toggleApplication("Visual Studio Code") end)
hs.hotkey.bind(hyper, "p", function() toggleApplication("System Preferences") end)
hs.hotkey.bind(hyper, "t", function() toggleApplication("iTerm2") end)
hs.hotkey.bind(hyper, "h", function() toggleApplication("Affinity Photo") end)
hs.hotkey.bind(hyper, "d", function() toggleApplication("Affinity Designer") end)
hs.hotkey.bind(hyper, "f13", function() toggleApplication("Calculator") end)