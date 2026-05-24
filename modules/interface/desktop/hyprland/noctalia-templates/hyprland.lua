-- === Color variables ===
local primary = "rgb({{colors.primary.default.hex_stripped}})"
local surface = "rgb({{colors.surface.default.hex_stripped}})"
local secondary = "rgb({{colors.secondary.default.hex_stripped}})"
local error = "rgb({{colors.error.default.hex_stripped}})"
local tertiary = "rgb({{colors.tertiary.default.hex_stripped}})"
local surface_lowest = "rgb({{colors.surface_container_lowest.default.hex_stripped}})"

-- === Config ===
hl.config({
    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
    },
    xwayland = {
        force_zero_scaling = true,
    },
    input = {
        kb_layout          = kbdLayout,
        kb_variant         = kbdVariant,
        repeat_delay       = 212,
        repeat_rate        = 35,
        numlock_by_default = true,
        follow_mouse       = 1,
        sensitivity        = 0,
        force_no_accel     = false,
        touchpad = {
            natural_scroll = true,
        },
        tablet = {
            output = "current",
        },
    },
    general = {
        gaps_in          = 5,
        gaps_out         = 10,
        border_size      = 2,
        col = {
            active_border   = primary,
            inactive_border = surface,
        },
        resize_on_border = true,
        layout           = "dwindle",
    },
    group = {
        col = {
            border_active          = secondary,
            border_inactive        = surface,
            border_locked_active   = error,
            border_locked_inactive = surface,
        },
        groupbar = {
            col = {
                active          = secondary,
                inactive        = surface,
                locked_active   = error,
                locked_inactive = surface,
            },
        },
    },
    decoration = {
        rounding       = 20,
        rounding_power = 2,
        dim_special    = 0.3,
        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = "rgba(1a1a1aee)",
        },
        blur = {
            enabled           = true,
            special           = true,
            size              = 3,
            passes            = 2,
            vibrancy          = 0.1696,
            new_optimizations = true,
            ignore_opacity    = true,
            xray              = false,
        },
    },
    animations = {
        enabled = true,
    },
    dwindle = {
        preserve_split = true,
    },
    master = {
        new_status = "master",
        new_on_top = true,
        mfact      = 0.5,
    },
    misc = {
        disable_hyprland_logo    = true,
        mouse_move_focuses_monitor = true,
        swallow_regex            = [[^(Alacritty|kitty|com\\.mitchellh\\.ghostty)$]],
        enable_swallow           = true,
        vrr                      = 0,
    },
    render = {
        direct_scanout = 2,
    },
    binds = {
        workspace_back_and_forth = false,
    },
})

-- === Animations ===
hl.curve("linear",          { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("md3_standard",    { type = "bezier", points = { {0.2, 0},     {0, 1}       } })
hl.curve("md3_decel",       { type = "bezier", points = { {0.05, 0.7},  {0.1, 1}     } })
hl.curve("md3_decel_smooth",{ type = "bezier", points = { {0.2, 0.4},   {0.1, 1}     } })
hl.curve("md3_accel",       { type = "bezier", points = { {0.3, 0},     {0.8, 0.15}  } })
hl.curve("overshot",        { type = "bezier", points = { {0.05, 0.9},  {0.1, 1.1}   } })
hl.curve("crazyshot",       { type = "bezier", points = { {0.1, 1.5},   {0.76, 0.92} } })
hl.curve("hyprnostretch",   { type = "bezier", points = { {0.05, 0.9},  {0.1, 1.0}   } })
hl.curve("fluent_decel",    { type = "bezier", points = { {0.1, 1},     {0, 1}       } })
hl.curve("easeInOutCirc",   { type = "bezier", points = { {0.85, 0},    {0.15, 1}    } })
hl.curve("easeOutCirc",     { type = "bezier", points = { {0, 0.55},    {0.45, 1}    } })
hl.curve("easeOutExpo",     { type = "bezier", points = { {0.16, 1},    {0.3, 1}     } })
hl.curve("resize_smooth",   { type = "bezier", points = { {0.25, 0.1},  {0.1, 1.0}   } })

hl.animation({ leaf = "windowsIn",        enabled = true, speed = 4, bezier = "md3_decel_smooth", style = "popin 60%" })
hl.animation({ leaf = "windowsOut",       enabled = true, speed = 4, bezier = "md3_decel",        style = "slide"     })
hl.animation({ leaf = "border",           enabled = true, speed = 10,bezier = "default"                               })
hl.animation({ leaf = "fade",             enabled = true, speed = 3, bezier = "md3_decel_smooth"                      })
hl.animation({ leaf = "workspaces",       enabled = true, speed = 7, bezier = "fluent_decel",     style = "slidefade 15%" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3, bezier = "md3_decel_smooth", style = "slidevert" })

-- === Gestures ===
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
hl.gesture({ fingers = 3, direction = "down",       action = "special"   })

-- === Monitors ===
hl.monitor({ output = "",                             mode = "preferred",    position = "auto", scale = "auto" })
hl.monitor({ output = "eDP-1",                        mode = "2560x1600@60", position = "auto", scale = 1.3333334 })
hl.monitor({ output = "desc:AOC CU34G4Z 1H0R5HA001666", mode = "3440x1440@240", position = "auto", scale = 1.3333334 })

-- === Workspaces ===
hl.workspace_rule({ workspace = "1",  monitor = "eDP-1",                            default = true })
hl.workspace_rule({ workspace = "2",  monitor = "eDP-1"  })
hl.workspace_rule({ workspace = "3",  monitor = "eDP-1"  })
hl.workspace_rule({ workspace = "4",  monitor = "eDP-1"  })
hl.workspace_rule({ workspace = "5",  monitor = "eDP-1"  })
hl.workspace_rule({ workspace = "6",  monitor = "desc:AOC CU34G4Z 1H0R5HA001666", default = true })
hl.workspace_rule({ workspace = "7",  monitor = "desc:AOC CU34G4Z 1H0R5HA001666" })
hl.workspace_rule({ workspace = "8",  monitor = "desc:AOC CU34G4Z 1H0R5HA001666" })
hl.workspace_rule({ workspace = "9",  monitor = "desc:AOC CU34G4Z 1H0R5HA001666" })
hl.workspace_rule({ workspace = "10", monitor = "desc:AOC CU34G4Z 1H0R5HA001666" })

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
hl.window_rule({ name = "opacity-spotify",     match = { class = "spotify"                                         }, opacity = "0.90 0.70" })
hl.window_rule({ name = "opacity-apps",        match = { class = "^(app.drey.Warp|net.davidotek.pupgui2|Signal|io.gitlab.theevilskeleton.Upscaler)$" }, opacity = "0.80 0.80" })
hl.window_rule({ name = "opacity-audio-net",   match = { class = "^(pavucontrol|org.pulseaudio.pavucontrol|blueman-manager|.blueman-manager-wrapped|nm-applet|nm-connection-editor)$" }, opacity = "0.80 0.70" })
hl.window_rule({ name = "opacity-polkit",      match = { class = "hyprpolkitagent"                                 }, opacity = "0.80 0.70" })

hl.window_rule({ name = "tag-games-content", match = { content = 3                                              }, tag = "+games" })
hl.window_rule({ name = "tag-games-class",   match = { class = [[^(steam_app.*|steam_app_\d+|gamescope|Waydroid|osu!)$]] }, tag = "+games" })
hl.window_rule({ name = "games-effects",     match = { tag = "games" }, monitor = "HDMI-A-1", sync_fullscreen = true, fullscreen = true, border_size = 0, no_shadow = true, no_blur = true,  no_anim = true })
hl.window_rule({ name = "video-effects",     match = { tag = "video" },                       sync_fullscreen = true, fullscreen = true, border_size = 0, no_shadow = true,                  no_anim = true })

hl.window_rule({ name = "float-misc",    match = { class = "^(qt5ct|nwg-look|org.kde.ark|Signal|com.github.rafostar.Clapper|app.drey.Warp|net.davidotek.pupgui2|eog|io.gitlab.theevilskeleton.Upscaler|pavucontrol|blueman-manager|.blueman-manager-wrapped|nm-applet|nm-connection-editor)$" }, float = true })
hl.window_rule({ name = "float-polkit", match = { class = "hyprpolkitagent" }, float = true })
hl.window_rule({ name = "float-spotify",match = { class = "spotify"         }, float = true, size = { 830, 875 }, move = { 10, 55  } })
hl.window_rule({ name = "float-cava",   match = { title = "Cava"            }, float = true, size = { 1000, 500}, move = { 880, 675} })

-- === Keybinds ===
CTRL    = "CTRL"

-- 1. WINDOW MANAGEMENT
hl.bind(mainMod .. " + Q", function()
    local wins = hl.get_windows({ match = { focus = true } })
    if wins and #wins > 0 and wins[1].class == "Steam" then
        hl.dsp.window.move({ workspace = "special:steam", follow = false })
    else
        hl.dsp.window.close()
    end
end)
hl.bind(mainMod .. " + W",           hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + F",           hl.dsp.window.fullscreen())
hl.bind(CTRL .. " + ESCAPE",         hl.dsp.exec_cmd("noctalia-shell ipc call bar toggle"))
hl.bind(mainMod .. " + TAB",         hl.dsp.focus({ window = "next" }))
hl.bind(mainMod .. " + left",        hl.dsp.focus({ direction = "left"  }))
hl.bind(mainMod .. " + right",       hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",          hl.dsp.focus({ direction = "up"    }))
hl.bind(mainMod .. " + down",        hl.dsp.focus({ direction = "down"  }))
hl.bind(mainMod .. " + CTRL + left", hl.dsp.window.move({ direction = "left"  }))
hl.bind(mainMod .. " + CTRL + right",hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + CTRL + up",   hl.dsp.window.move({ direction = "up"    }))
hl.bind(mainMod .. " + CTRL + down", hl.dsp.window.move({ direction = "down"  }))

-- Resize (repeating)
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.resize({ x = 10, y = 0 }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.resize({ x = -10, y = 0 }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.resize({ x = 0, y = -10 }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.resize({ x = 0, y = 10 }), { repeating = true })

-- 2. WORKSPACES
-- Numpad keycodes: KP_End=1 KP_Down=2 KP_Next=3 KP_Left=4 KP_Begin=5 KP_Right=6 KP_Home=7 KP_Up=8 KP_Prior=9 KP_Insert=0
local kpKeys = { "KP_End","KP_Down","KP_Next","KP_Left","KP_Begin","KP_Right","KP_Home","KP_Up","KP_Prior","KP_Insert" }
for i, key in ipairs(kpKeys) do
    hl.bind(mainMod .. " + " .. key,               hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key,        hl.dsp.window.move({ workspace = i }))
    hl.bind(mainMod .. " + CTRL + " .. key,         hl.dsp.window.move({ workspace = i, silent = true }))
end

hl.bind(mainMod .. " + ALT + down",        hl.dsp.focus({ workspace = "empty" }))
hl.bind(mainMod .. " + S",                 hl.dsp.workspace.toggle_special())
hl.bind(mainMod .. " + CTRL + S",          hl.dsp.window.move({ workspace = "special", silent = true }))
hl.bind(mainMod .. " + G",                 hl.dsp.workspace.toggle_special("steam"))
hl.bind(mainMod .. " + mouse_down",        hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",          hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + mouse:276",         hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + mouse:275",         hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + mouse:276", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + mouse:275", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + CTRL + mouse:276",  hl.dsp.window.move({ workspace = 1, silent = true }))
hl.bind(mainMod .. " + CTRL + mouse:275",  hl.dsp.window.move({ workspace = 6, silent = true }))

-- 3. APPLICATIONS
hl.bind(mainMod .. " + U",          hl.dsp.exec_cmd("$term -e rebuild"))
hl.bind(mainMod .. " + L",          hl.dsp.exec_cmd("noctalia-shell ipc call lockScreen lock"))
hl.bind(mainMod .. " + BACKSPACE",  hl.dsp.exec_cmd("noctalia-shell ipc call sessionMenu toggle"))
hl.bind(mainMod .. " + T",          hl.dsp.exec_cmd(term))
hl.bind(mainMod .. " + D",          hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + C",          hl.dsp.exec_cmd(editor))
hl.bind(mainMod .. " + B",          hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + M",          hl.dsp.exec_cmd("spotify"))
hl.bind(mainMod .. " + CTRL + C",   hl.dsp.exec_cmd("hyprpicker --autocopy --format=hex"))
hl.bind(mainMod .. " + A",          hl.dsp.exec_cmd("noctalia-shell ipc call launcher toggle"))
hl.bind(mainMod .. " + SPACE",      hl.dsp.exec_cmd("noctalia-shell ipc call controlCenter toggle"))
hl.bind(mainMod .. " + SHIFT + W",  hl.dsp.exec_cmd("noctalia-shell ipc call wallpaper toggle"))
hl.bind(mainMod .. " + SHIFT + C",  hl.dsp.exec_cmd("noctalia-shell ipc call launcher calculator"))
hl.bind(mainMod .. " + E",          hl.dsp.exec_cmd("noctalia-shell ipc call launcher emoji"))
hl.bind(mainMod .. " + ALT + K",    hl.dsp.exec_cmd("hyprctl switchxkblayout all next"))
hl.bind(mainMod .. " + less",       hl.dsp.exec_cmd("noctalia-shell ipc call notifications toggleHistory"))
hl.bind(mainMod .. " + K",          hl.dsp.exec_cmd("noctalia-shell ipc call plugin:keybind-cheatsheet toggle"))

-- 4. MEDIA
hl.bind("XF86AudioMicMute",  hl.dsp.exec_cmd("pamixer --default-source -t"), { locked = true })
hl.bind("XF86AudioMute",     hl.dsp.exec_cmd("pamixer -t"),                  { locked = true })
hl.bind("XF86AudioPlay",     hl.dsp.exec_cmd("playerctl play-pause"),         { locked = true })
hl.bind("XF86AudioPause",    hl.dsp.exec_cmd("playerctl play-pause"),         { locked = true })
hl.bind("xf86AudioNext",     hl.dsp.exec_cmd("playerctl next"),               { locked = true })
hl.bind("xf86AudioPrev",     hl.dsp.exec_cmd("playerctl previous"),           { locked = true })
hl.bind("xf86Sleep",         hl.dsp.exec_cmd("systemctl suspend"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("noctalia-shell ipc call brightness decrease"), { repeating = true })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("noctalia-shell ipc call brightness increase"), { repeating = true })
hl.bind("SHIFT + XF86MonBrightnessUp",  hl.dsp.exec_cmd("ddcutil setvcp 10 + 5"), { repeating = true })
hl.bind("SHIFT + XF86MonBrightnessDown",hl.dsp.exec_cmd("ddcutil setvcp 10 - 5"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pamixer -d 2"), { repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pamixer -i 2"), { repeating = true })
hl.bind(mainMod .. " + F8",  hl.dsp.exec_cmd("kill $(cat /tmp/auto-clicker.pid) 2>/dev/null || ~/nixcfg/modules/interface/desktop/hyprland/scripts/autoclicker --cps 40"))

-- Mouse binds
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
