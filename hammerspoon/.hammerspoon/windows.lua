function moveWindow(x, y, w, h)
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.w * x + max.x
  f.y = max.h * y + max.y
  f.w = max.w * w
  f.h = max.h * h
  win:setFrame(f)
end

function moveScreen(direction)
  local win = hs.window.focusedWindow()
  if direction == "left" then
    win:moveOneScreenWest()
  elseif direction == "right" then
    win:moveOneScreenEast()
  elseif direction == "up" then
    win:moveOneScreenNorth()
  elseif direction == "down" then
    win:moveOneScreenSouth()
  end
end
