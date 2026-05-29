-- === Color variables ===
primary = "rgb({{colors.primary.default.hex_stripped}})"
surface = "rgb({{colors.surface.default.hex_stripped}})"
secondary = "rgb({{colors.secondary.default.hex_stripped}})"
error = "rgb({{colors.error.default.hex_stripped}})"
tertiary = "rgb({{colors.tertiary.default.hex_stripped}})"
surface_lowest = "rgb({{colors.surface_container_lowest.default.hex_stripped}})"

-- Resize (repeating)
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.resize({ x = 10, y = 0 }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.resize({ x = -10, y = 0 }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.resize({ x = 0, y = -10 }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.resize({ x = 0, y = 10 }), { repeating = true })

-- 2. WORKSPACES

hl.bind(mainMod .. " + ALT + down",        hl.dsp.focus({ workspace = "empty" }))

hl.bind(mainMod .. " + mouse:276",         hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + mouse:275",         hl.dsp.focus({ workspace = 6 }))

-- 3. APPLICATIONS
hl.bind(mainMod .. " + CTRL + C",   hl.dsp.exec_cmd("hyprpicker --autocopy --format=hex"))
hl.bind(mainMod .. " + ALT + K",    hl.dsp.exec_cmd("hyprctl switchxkblayout all next"))
