hyper = {"ctrl", "alt", "cmd"}

require "apps"

hs.loadSpoon("MiroWindowsManager")
hs.loadSpoon("WindowScreenLeftAndRight")
hs.window.animationDuration = 0.05
spoon.MiroWindowsManager:bindHotkeys({
  up = {hyper, "up"},
  right = {hyper, "right"},
  down = {hyper, "down"},
  left = {hyper, "left"},
  fullscreen = {hyper, "/"}
})

spoon.WindowScreenLeftAndRight:bindHotkeys({
  screen_left = { hyper, "," },
  screen_right= { hyper, "." },
})

hs.hotkey.bind(hyper, 't', function() hs.execute('trash', true) end)

hs.hotkey.bind(hyper, "r", function() hs.reload(); end)
hs.hotkey.bind(hyper, "a", function() hs.caffeinate.lockScreen(); end)
hs.alert("Hammerspoon config loaded")