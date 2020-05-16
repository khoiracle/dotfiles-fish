hyper = {"ctrl", "cmd"}

-- Configurations
hs.window.animationDuration = 0

-- Spoons
hs.loadSpoon("ReloadConfiguration")
hs.loadSpoon("MiroWindowsManager")

spoon.ReloadConfiguration:start()
spoon.MiroWindowsManager:bindHotkeys({
  up = {hyper, "k"},
  right = {hyper, "l"},
  down = {hyper, "j"},
  left = {hyper, "h"},
  fullscreen = {hyper, "f"}
})

-- Custom modules
require "watchers" -- Watchers for system event
require "appswitch" -- Quick app switch
