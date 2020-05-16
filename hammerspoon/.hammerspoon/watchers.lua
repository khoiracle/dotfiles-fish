function muteOnWake(eventType)
  if (eventType == hs.caffeinate.watcher.systemDidWake) then
    local output = hs.audiodevice.defaultOutputDevice()
    output:setMuted(true)
  end
end

caffeinateWatcher = hs.caffeinate.watcher.new(muteOnWake)
caffeinateWatcher:start()

function muteWhenSwitchingAudioDevice(eventType)
  if eventType ~= "dOut" then
    return
  end
  local output = hs.audiodevice.defaultOutputDevice()
  output:setMuted(true)
end

hs.audiodevice.watcher.setCallback(muteWhenSwitchingAudioDevice)
hs.audiodevice.watcher.start()
