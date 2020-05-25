function caffeinateFunc(eventType)
  if (eventType == hs.caffeinate.watcher.systemDidWake) then
    local output = hs.audiodevice.defaultOutputDevice()
    output:setMuted(true)
  end
  if (eventType == hs.caffeinate.watcher.screensDidLock) then 
    hs.keycodes.currentSourceID("com.apple.keylayout.US")
  end
end

caffeinateWatcher = hs.caffeinate.watcher.new(caffeinateFunc)
caffeinateWatcher:start()

function muteWhenSwitchingAudioDevice(eventType)
  if eventType ~= "dOut" then
    return
  end
  local output = hs.audiodevice.defaultOutputDevice()
  if (output:name() == "MacBook Pro Speakers") then
    output:setMuted(true)
  end
end

hs.audiodevice.watcher.setCallback(muteWhenSwitchingAudioDevice)
hs.audiodevice.watcher.start()

function applicationWatcher(appName, eventType, appObject)
  if (eventType == hs.application.watcher.activated) then
    if (appName == "Finder") then
      appObject:selectMenuItem({"Window", "Bring All to Front"})
    end
    if (appsRequiresUSInput[appName]) then -- Disable Vietnamese Keyboard
      hs.keycodes.currentSourceID("com.apple.keylayout.US")
    end
  end
end
appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()
