-- === Environment variables ===

hl.env("XDG_CURRENT_DESKTOP",     "Hyprland")
hl.env("XDG_SESSION_DESKTOP",     "Hyprland")
hl.env("XDG_SESSION_TYPE",        "wayland")
hl.env("MOZ_ENABLE_WAYLAND",      "1")
hl.env("QT_QPA_PLATFORM",         "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME",    "qt6ct")
hl.env("LIBVA_DRIVER_NAME",       "iHD")
hl.env("__GLX_VENDOR_LIBRARY_NAME","mesa")
hl.env("GDK_BACKEND",             "wayland,x11")
hl.env("SDL_VIDEODRIVER",         "wayland,x11")
