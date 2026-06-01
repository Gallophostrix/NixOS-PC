-- === Autostart ===

hl.on("hyprland.start", function()
    hl.exec_cmd("noctalia")
    hl.exec_cmd("spotify", { workspace = 3 })
    hl.exec_cmd(browser, { workspace = 6 })
end)

hl.on("hyprland.shutdown", function()
    hl.dsp.window.close_all()
end)
