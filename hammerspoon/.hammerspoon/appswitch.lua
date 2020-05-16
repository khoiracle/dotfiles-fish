-- Toggle an application: if frontmost: hide it. if not: activate/launch it
local function toggleApplication(name)
    local app = hs.application.find(name)
    if not app or app:isHidden() then
        hs.application.launchOrFocus(name)
    elseif hs.application.frontmostApplication() ~= app then
        app:activate()
    else
        app:hide()
    end
end

hs.hotkey.bind(hyper, 't', hs.fnutils.partial(toggleApplication, "Terminal"))
hs.hotkey.bind(hyper, 'c', hs.fnutils.partial(toggleApplication, "Google Chrome"))
hs.hotkey.bind(hyper, 'x', hs.fnutils.partial(toggleApplication, "Xcode"))

