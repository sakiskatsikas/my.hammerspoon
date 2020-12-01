hyper = {"ctrl", "alt", "cmd"}

require "apps"

hs.loadSpoon("MiroWindowsManager")
hs.window.animationDuration = 0.05
spoon.MiroWindowsManager:bindHotkeys({
  up = {hyper, "up"},
  right = {hyper, "right"},
  down = {hyper, "down"},
  left = {hyper, "left"},
  fullscreen = {hyper, "/"}
})

hs.hotkey.bind(hyper, "r", function() hs.reload(); end)
hs.hotkey.bind(hyper, "a", function() hs.caffeinate.lockScreen(); end)
hs.alert("Hammerspoon config loaded")