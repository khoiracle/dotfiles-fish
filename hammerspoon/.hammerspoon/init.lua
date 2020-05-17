-- Custom modules
require "watchers" -- Watchers for system event
require "appswitch" -- Quick app switch
require "windows" -- Windows functions

-- Global Configurations
hs.window.animationDuration = 0
hyper = {"ctrl", "alt"}
shiftHyper = {"ctrl", "alt" , "shift"}

-- Spoons
hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

-- Window management bindings
hs.hotkey.bind(hyper, "h", hs.fnutils.partial(moveWindow, 0, 0, 0.5, 1))
hs.hotkey.bind(hyper, "j", hs.fnutils.partial(moveWindow, 0, 0.5, 1, 0.5))
hs.hotkey.bind(hyper, "k", hs.fnutils.partial(moveWindow, 0, 0, 1, 0.5))
hs.hotkey.bind(hyper, "l", hs.fnutils.partial(moveWindow, 0.5, 0, 0.5, 1))
hs.hotkey.bind(hyper, "f", hs.fnutils.partial(moveWindow, 0, 0, 1, 1))
hs.hotkey.bind(shiftHyper, "h", hs.fnutils.partial(moveScreen, "left"))
hs.hotkey.bind(shiftHyper, "j", hs.fnutils.partial(moveScreen, "down"))
hs.hotkey.bind(shiftHyper, "k", hs.fnutils.partial(moveScreen, "up"))
hs.hotkey.bind(shiftHyper, "l", hs.fnutils.partial(moveScreen, "right"))

-- App Switchers bindings
hs.hotkey.bind(hyper, 't', hs.fnutils.partial(toggleApplication, "Alacritty"))
hs.hotkey.bind(hyper, 'c', hs.fnutils.partial(toggleApplication, "Google Chrome"))
hs.hotkey.bind(hyper, 'x', hs.fnutils.partial(toggleApplication, "Xcode"))
