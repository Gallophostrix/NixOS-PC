local custom = require("custom")

-- == Keybinds ==

---- Workspace Management

hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special())
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special", follow = false }))

local numpad = {87, 88, 89, 83, 84, 85, 79, 80, 81, 90}
for i, code in ipairs(numpad) do
  hl.bind(mainMod .. " + code:" .. code,        hl.dsp.focus({ workspace = i }))
  hl.bind(mainMod .. " + SHIFT + code:" .. code, hl.dsp.window.move({ workspace = i }))
  hl.bind(mainMod .. " + CTRL + code:" .. code,  hl.dsp.window.move({ workspace = i, follow = false }))
end
