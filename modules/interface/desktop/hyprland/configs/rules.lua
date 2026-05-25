-- === Workspace rules ===
for i = 1, 5 do
  hl.workspace_rule({ workspace = tostring(i), monitor = "eDP-1", default = i == 1 })
end
for i = 6, 10 do
  hl.workspace_rule({ workspace = tostring(i), monitor = "desc:AOC CU34G4Z 1H0R5HA001666", default = i == 6 })
end

-- === Window rules ===
hl.window_rule({ name = "opacity-terminals",   match = { class = [[^(kitty|alacritty|Alacritty|com\.mitchellh\.ghostty|org.wezfurlong.wezterm)$]] }, opacity = "0.80 0.70" })
hl.window_rule({ name = "opacity-nvim",        match = { class = "nvim-wrapper"                                    }, opacity = "0.80 0.80" })
hl.window_rule({ name = "opacity-emacs",       match = { class = "Emacs"                                           }, opacity = "0.90 0.90" })
hl.window_rule({ name = "opacity-gcr",         match = { class = "gcr-prompter"                                    }, opacity = "0.90 0.90" })
hl.window_rule({ name = "opacity-polkit-title",match = { title = "^(Hyprland Polkit Agent)$"                       }, opacity = "0.90 0.90" })
hl.window_rule({ name = "opacity-brave",       match = { class = "^(brave-browser|Brave-browser)$"                 }, opacity = "0.95 0.85" })
hl.window_rule({ name = "opacity-filemanagers",match = { class = "^(org.gnome.Nautilus|thunar)$"                   }, opacity = "0.80 0.80" })
hl.window_rule({ name = "opacity-steam",       match = { class = "^(Steam|steam|steamwebhelper)$"                  }, opacity = "0.80 0.80" })
hl.window_rule({ name = "opacity-zed",         match = { class = "^(Zed|dev.zed.Zed|coda-qt)$"                     }, opacity = "0.90 0.90" })
hl.window_rule({ name = "opacity-utilities",   match = { class = "^(tuiFileManager|org.kde.dolphin|org.kde.ark|nwg-look|qt5ct|qt6ct)$" }, opacity = "0.80 0.80" })
hl.window_rule({ name = "opacity-misc",        match = { class = "^(com.github.tchx84.Flatseal|hu.kramo.Cartridges|com.obsproject.Studio|gnome-boxes)$" }, opacity = "0.80 0.80" })
hl.window_rule({ name = "opacity-discord",     match = { class = "^(discord|WebCord)$"                             }, opacity = "0.90 0.90" })
hl.window_rule({ name = "opacity-spotify",     match = { class = "^(Spotify|spotify)$"                             }, opacity = "0.90 0.70" })
hl.window_rule({ name = "opacity-apps",        match = { class = "^(app.drey.Warp|net.davidotek.pupgui2|Signal|io.gitlab.theevilskeleton.Upscaler)$" }, opacity = "0.80 0.80" })
hl.window_rule({ name = "opacity-audio-net",   match = { class = "^(pavucontrol|org.pulseaudio.pavucontrol|blueman-manager|.blueman-manager-wrapped|nm-applet|nm-connection-editor)$" }, opacity = "0.80 0.70" })
hl.window_rule({ name = "opacity-polkit",      match = { class = "hyprpolkitagent"                                 }, opacity = "0.80 0.70" })

hl.window_rule({ name = "tag-games-content", match = { content = 3                                              }, tag = "+games" })
hl.window_rule({ name = "tag-games-class",   match = { class = [[^(steam_app.*|steam_app_\d+|gamescope|Waydroid|osu!)$]] }, tag = "+games" })
hl.window_rule({ name = "games-effects",     match = { tag = "games" }, monitor = "HDMI-A-1", sync_fullscreen = true, fullscreen = true, border_size = 0, no_shadow = true, no_blur = true,  no_anim = true })
hl.window_rule({ name = "video-effects",     match = { tag = "video" },                       sync_fullscreen = true, fullscreen = true, border_size = 0, no_shadow = true,                  no_anim = true })

hl.window_rule({ name = "float-misc",    match = { class = "^(qt5ct|nwg-look|org.kde.ark|Signal|com.github.rafostar.Clapper|app.drey.Warp|net.davidotek.pupgui2|eog|io.gitlab.theevilskeleton.Upscaler|pavucontrol|blueman-manager|.blueman-manager-wrapped|nm-applet|nm-connection-editor)$" }, float = true })
hl.window_rule({ name = "float-polkit", match = { class = "hyprpolkitagent" }, float = true })
hl.window_rule({ name = "float-spotify",match = { class = "^(Spotify|spotify)$" }, float = true, size = { 830, 875 }, move = { 10, 55  } })

hl.window_rule({
  name      = "editor-appearance",
  match     = { class = "dev.zed.Zed" },
  animation = "popin",
})

hl.window_rule({
  match        = { fullscreen = true },
  border_color = error,
})
