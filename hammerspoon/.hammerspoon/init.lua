-- Custom modules
require "watchers" -- Watchers for system event
require "appswitch" -- Quick app switch

-- Configurations
hs.window.animationDuration = 0
hyper = {"ctrl", "cmd"}

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


hs.hotkey.bind(hyper, 't', hs.fnutils.partial(toggleApplication, "Terminal"))
hs.hotkey.bind(hyper, 'c', hs.fnutils.partial(toggleApplication, "Google Chrome"))
hs.hotkey.bind(hyper, 'x', hs.fnutils.partial(toggleApplication, "Xcode"))
