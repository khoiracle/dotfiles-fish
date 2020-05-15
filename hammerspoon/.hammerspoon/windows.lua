hs.window.animationDuration = 0

function moveScreen(x, y, w, h)
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

hs.hotkey.bind(hyper, "h", moveScreen(0, 0, 0.5, 1))
hs.hotkey.bind(hyper, "j", moveScreen(0, 0.5, 1, 0.5))
hs.hotkey.bind(hyper, "k", moveScreen(0, 0, 1, 0.5))
hs.hotkey.bind(hyper, "l", moveScreen(0.5, 0, 0.5, 1))
hs.hotkey.bind(hyper, "SPACE", moveScreen(0, 0, 1, 1))
