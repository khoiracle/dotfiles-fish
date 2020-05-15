hs.window.animationDuration = 0

function moveWindow(x, y, w, h)
  return function() 
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.w * x + max.x
    f.y = max.h * y
    f.w = max.w * w
    f.h = max.h * h
    win:setFrame(f)
  end
end

function moveScreen(direction)
  return function() 
    local win = hs.window.focusedWindow()
    if direction == "left" then
        win:moveOneScreenWest()
    elseif direction == "right" then
        win:moveOneScreenEast()
    end
  end
end

hs.hotkey.bind(hyper, "h", moveWindow(0, 0, 0.5, 1))
hs.hotkey.bind(hyper, "j", moveWindow(0, 0.5, 1, 0.5))
hs.hotkey.bind(hyper, "k", moveWindow(0, 0, 1, 0.5))
hs.hotkey.bind(hyper, "l", moveWindow(0.5, 0, 0.5, 1))
hs.hotkey.bind(hyper, "SPACE", moveWindow(0, 0, 1, 1))

hs.hotkey.bind(hyper, "n", moveScreen("right"))
hs.hotkey.bind(hyper, "p", moveScreen("left"))
