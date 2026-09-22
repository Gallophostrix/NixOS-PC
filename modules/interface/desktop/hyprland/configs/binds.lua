-- == Keybinds ==

---- Workspace Management

hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special(), { description = "Toggle special workspace" })
hl.bind(mainMod .. " + CTRL + S", hl.dsp.window.move({ workspace = "special", follow = false }), { description = "Move window to special workspace" })

local numpad = { 87, 88, 89, 83, 84, 85, 79, 80, 81, 90 }
for i, code in ipairs(numpad) do
    hl.bind(mainMod .. " + code:" .. code, hl.dsp.focus({ workspace = i }), { description = "Focus workspace " .. i })
    hl.bind(mainMod .. " + SHIFT + code:" .. code, hl.dsp.window.move({ workspace = i }), { description = "Move window to workspace " .. i })
    hl.bind(mainMod .. " + CTRL + code:" .. code, hl.dsp.window.move({ workspace = i, follow = false }), { description = "Move window to workspace " .. i .. " without following" })
end

--- Window Management

hl.bind(mainMod .. " + Q", hl.dsp.window.close(), { description = "Close window" })
hl.bind(mainMod .. " + T", hl.dsp.window.float(), { description = "Float window" })
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized" }), { description = "Fullscreen window" })
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true, description = "Drag window" })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true, description = "Resize window" })

local dirs = {
    { keys = { "left", "H" },  direction = "l" },
    { keys = { "right", "L" }, direction = "r" },
    { keys = { "up", "K" },    direction = "u" },
    { keys = { "down", "J" },  direction = "d" },
}
for _, b in ipairs(dirs) do
    for _, key in ipairs(b.keys) do
        hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ direction = b.direction }), { description = "Focus " .. b.direction })
        hl.bind(mainMod .. " + CTRL + " .. key, hl.dsp.window.move({ direction = b.direction }), { description = "Move window " .. b.direction })
    end
end

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e-1" }), { description = "Focus previous workspace" })
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e+1" }), { description = "Focus next workspace" })

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
hl.gesture({ fingers = 3, direction = "down", action = "close" })
hl.gesture({ fingers = 3, direction = "up", action = "fullscreen" })

hl.bind(mainMod .. " + G", hl.dsp.workspace.toggle_special("steam"), { description = "Toggle Steam workspace" })

--- Layout Management

hl.bind(mainMod .. " + R", hl.dsp.layout("togglesplit"), { description = "Toggle split layout" })

--- Execution Binds

local exec_binds = {
    -- Application launchers
    { key = "RETURN",                        exec = term, description = "Launch terminal" },
    { key = "B",                             exec = browser, description = "Launch browser" },
    { key = "D",                             exec = fileManager, description = "Launch file manager" },
    { key = "E",                             exec = editor, description = "Launch editor" },

    --- Noctalia calls
    { key = "A",                             exec = "noctalia msg panel-toggle launcher", description = "Toggle launcher panel" },
    { key = "SPACE",                         exec = "noctalia msg panel-toggle control-center", description = "Toggle control center panel" },
    { key = "BackSpace",                     exec = "noctalia msg panel-toggle session", description = "Toggle session panel" },
    { key = "DELETE",                        exec = "noctalia msg session lock", description = "Lock session" },
    { key = "Print",                         exec = "noctalia msg screenshot-region", description = "Take screenshot" },
    { key = "W",                             exec = "noctalia msg panel-toggle wallpaper", description = "Toggle wallpaper panel" },
    { key = "less",                          exec = "noctalia msg panel-toggle notifications", description = "Toggle notifications panel" },
    { key = "SHIFT + comma",                 exec = "noctalia msg panel-toggle blackbartblues/keymap:panel", description = "Toggle keymap" },

    --- Multimedia keys
    { key = "XF86AudioLowerVolume",          exec = "pamixer -d 2",                                with_mod = false, opts = { locked = true, repeating = true }, description = "Lower volume" },
    { key = "XF86AudioRaiseVolume",          exec = "pamixer -i 2",                                with_mod = false, opts = { locked = true, repeating = true }, description = "Raise volume" },

    { key = "XF86AudioMicMute",              exec = "pamixer --default-source -t",                 with_mod = false, opts = { locked = true }, description = "Toggle microphone mute" },
    { key = "XF86AudioMute",                 exec = "pamixer -t",                                  with_mod = false, opts = { locked = true }, description = "Toggle audio mute" },
    { key = "XF86AudioPlay",                 exec = "playerctl play-pause", description = "Play/pause" },
    { key = "XF86AudioPrev",                 exec = "playerctl previous", description = "Previous track" },
    { key = "XF86AudioNext",                 exec = "playerctl next", description = "Next track" },

    { key = "XF86MonBrightnessDown",         exec = "noctalia msg brightness-down",                with_mod = false, opts = { repeating = true }, description = "Decrease brightness" },
    { key = "XF86MonBrightnessUp",           exec = "noctalia msg brightness-up",                  with_mod = false, opts = { repeating = true }, description = "Increase brightness" },
    { key = "SHIFT + XF86MonBrightnessDown", exec = "ddcutil setvcp 10 - 5",                       with_mod = false, opts = { repeating = true }, description = "Decrease brightness" },
    { key = "SHIFT + XF86MonBrightnessUp",   exec = "ddcutil setvcp 10 + 5",                       with_mod = false, opts = { repeating = true }, description = "Increase brightness" },
}
for _, bind in ipairs(exec_binds) do
    local key = bind.key
    if bind.with_mod ~= false then
        key = mainMod .. " + " .. key
    end

    local opts = bind.opts or {}
    opts.description = bind.description

    hl.bind(key, hl.dsp.exec_cmd(bind.exec), opts)
end

hl.bind("CTRL + ESCAPE", hl.dsp.exec_cmd("noctalia msg bar-toggle"), {}, { description = "Toggle bar" })
