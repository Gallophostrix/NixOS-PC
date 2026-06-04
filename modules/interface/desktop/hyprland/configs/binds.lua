-- == Keybinds ==

---- Workspace Management

hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special())
hl.bind(mainMod .. " + CTRL + S", hl.dsp.window.move({ workspace = "special", follow = false }))

local numpad = { 87, 88, 89, 83, 84, 85, 79, 80, 81, 90 }
for i, code in ipairs(numpad) do
    hl.bind(mainMod .. " + code:" .. code, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + code:" .. code, hl.dsp.window.move({ workspace = i }))
    hl.bind(mainMod .. " + CTRL + code:" .. code, hl.dsp.window.move({ workspace = i, follow = false }))
end

--- Window Management

hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + T", hl.dsp.window.float())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

local dirs = {
    { keys = { "left", "H" },  direction = "l" },
    { keys = { "right", "L" }, direction = "r" },
    { keys = { "up", "K" },    direction = "u" },
    { keys = { "down", "J" },  direction = "d" },
}
for _, b in ipairs(dirs) do
    for _, key in ipairs(b.keys) do
        hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ direction = b.direction }))
        hl.bind(mainMod .. " + CTRL + " .. key, hl.dsp.window.move({ direction = b.direction }))
    end
end

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
hl.gesture({ fingers = 3, direction = "down", action = "close" })
hl.gesture({ fingers = 3, direction = "up", action = "fullscreen" })

hl.gesture({ fingers = 2, direction = "pinch", action = "cursorZoom", zoom_level = 1, mode = "live" })


hl.bind(mainMod .. " + G", hl.dsp.workspace.toggle_special("steam"))

--- Layout Management

hl.bind(mainMod .. " + R", hl.dsp.layout("togglesplit"))

--- Execution Binds

local exec_binds = {
    -- Application launchers
    { key = "RETURN",                        exec = term },
    { key = "B",                             exec = browser },
    { key = "D",                             exec = fileManager },
    { key = "E",                             exec = editor },

    --- Noctalia calls
    { key = "A",                             exec = "noctalia msg panel-toggle launcher" },
    { key = "SPACE",                         exec = "noctalia msg panel-toggle control-center" },
    { key = "BackSpace",                     exec = "noctalia msg panel-toggle session" },
    { key = "DELETE",                        exec = "noctalia msg screen-lock" },
    { key = "W",                             exec = "noctalia msg panel-toggle wallpaper" },
    { key = "less",                          exec = "noctalia msg panel-toggle notifications" },
    { key = "SHIFT + comma",                 exec = "noctalia msg panel-toggle keybind-cheatsheet" },

    --- Multimedia keys
    { key = "XF86AudioLowerVolume",          exec = "pamixer -d 2",                                with_mod = false, opts = { locked = true, repeating = true } },
    { key = "XF86AudioRaiseVolume",          exec = "pamixer -i 2",                                with_mod = false, opts = { locked = true, repeating = true } },

    { key = "XF86AudioMicMute",              exec = "pamixer --default-source -t",                 with_mod = false, opts = { locked = true } },
    { key = "XF86AudioMute",                 exec = "pamixer -t",                                  with_mod = false, opts = { locked = true } },
    { key = "XF86AudioPlay",                 exec = "playerctl play-pause" },
    { key = "XF86AudioPrev",                 exec = "playerctl previous" },
    { key = "XF86AudioNext",                 exec = "playerctl next" },

    { key = "XF86MonBrightnessDown",         exec = "noctalia msg brightness-down",                with_mod = false, opts = { repeating = true } },
    { key = "XF86MonBrightnessUp",           exec = "noctalia msg brightness-up",                  with_mod = false, opts = { repeating = true } },
    { key = "SHIFT + XF86MonBrightnessDown", exec = "ddcutil setvcp 10 - 5",                       with_mod = false, opts = { repeating = true } },
    { key = "SHIFT + XF86MonBrightnessUp",   exec = "ddcutil setvcp 10 + 5",                       with_mod = false, opts = { repeating = true } },
}
for _, bind in ipairs(exec_binds) do
    local key = bind.key
    if bind.with_mod ~= false then
        key = mainMod .. " + " .. key
    end

    hl.bind(key, hl.dsp.exec_cmd(bind.exec), bind.opts)
end

hl.bind("CTRL + ESCAPE", hl.dsp.exec_cmd("noctalia-shell ipc call bar toggle"))
