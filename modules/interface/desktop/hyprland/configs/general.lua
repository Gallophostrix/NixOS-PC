--- Require calls
require("../hyprland-noctalia")
require("configs/envs")
require("configs/rules")
require("configs/execs")
require("configs/binds")

--- Monitors

hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = 1.0,
    bitdepth = 10,
})
hl.monitor({
    output = "eDP-1",
    mode = "preferred",
    position = "auto",
    scale = 1.3333334,
    bitdepth = 8,
})
hl.monitor({
    output = "desc:AOC CU34G4Z 1H0R5HA001666",
    mode = "3440x1440@240",
    position = "auto",
    scale = 1.3333334,
    bitdepth = 8,
    vrr = 2,
})

--- input

hl.config({
    input = {
        kb_layout          = kbdLayout,
        kb_variant         = kbdVariant,
        numlock_by_default = true,
        repeat_rate        = 35,
        repeat_delay       = 212,
        follow_mouse       = 1,
        sensitivity        = 0,
        force_no_accel     = false,
        touchpad = {
            natural_scroll = true,
        },
    },
})

--- General

hl.config({
    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
    },

    xwayland = {
        force_zero_scaling = true,
    },
})

--- Look and Feel

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 10,
        border_size = 2,

        layout = "dwindle",

        col = {
            active_border = {
                colors = { primary, tertiary },
                angle = 45,
            },
            inactive_border = surface,
        },
        resize_on_border = true,
    },

    decoration = {
        rounding = 20,
        dim_special = 0.3,

        shadow = {
            enabled = true,
            range = 10,
            render_power = 3,
            color = "#000000",
        },

        blur = {
            enabled = true,
            size = 3,
            passes = 2,
            ignore_opacity = true,
            new_optimizations = true,
            xray = false,
            noise = 0.08,
            contrast = 1.5,
            vibrancy = 0.1696,
            special = true,
        },
    },
})


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

hl.animation({ leaf = "windowsIn",        enabled = true, speed = 7, bezier = "md3_decel_smooth", style = "popin 60%" })
hl.animation({ leaf = "windowsOut",       enabled = true, speed = 4, bezier = "md3_decel",        style = "slide"     })
hl.animation({ leaf = "border",           enabled = true, speed = 10,bezier = "default"                               })
hl.animation({ leaf = "fade",             enabled = true, speed = 3, bezier = "md3_decel_smooth"                      })
hl.animation({ leaf = "workspaces",       enabled = true, speed = 7, bezier = "fluent_decel",     style = "slidefade 15%" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3, bezier = "md3_decel_smooth", style = "slidevert" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 3, bezier = "md3_decel" })

hl.animation({ leaf = "borderangle", enabled = true, speed = 3, bezier = "linear", style = "once" })

hl.config({
    dwindle = {
        preserve_split = true,
        smart_split = true,
    },
})

hl.config({
    master = {
        new_status = "master",
        mfact = 0.5,
    },
})

hl.config({
    scrolling = {
        fullscreen_on_one_column = false,
    },
})

--- Groups

-- hl.config({
--     groups = {
--         col = {
--             border_active = {
--                 colors = { primary, secondary },
--                 angle = 45,
--             },
--             border_inactive = {
--                 color = surface,
--             },
--         },
--         groupbar = {

--         },
--     },
-- })

-- Misc and Rendering

hl.config({
    misc = {
        disable_hyprland_logo    = true,
        disable_splash_rendering = true,
        vrr                      = 3,
        enable_swallow           = true,
        swallow_regex            = [[^(Alacritty|kitty|com\\.mitchellh\\.ghostty)$]],
    },

    render = {
        direct_scanout = 2,
    }
})
