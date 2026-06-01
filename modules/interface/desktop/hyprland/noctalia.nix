{...}: {
  programs.noctalia = {
    enable = true;
    systemd.enable = true;

    settings = {
      shell = {
        ui_scale = 1.1;
        font_family = "DejaVu Sans";
        lang = "en";
        time_format = "{:%H:%M}";
        date_format = "{:%A, %d %B %Y}";
        offline_mode = false;
        telemetry_enabled = false;
        polkit_agent = true;
        password_style = "random";
        avatar_path = "/mnt/data/Images/Affichage/Photo de profil/Gallophostrix.png";
        settings_show_advanced = true;
        middle_click_opens_widget_settings = true;
        show_location = true;
        clipboard_enabled = true;
        clipboard_history_max_entries = 50;
        clipboard_confirm_clear_history = false;
        clipboard_auto_paste = "auto";
        clipboard_image_action_command = "";
        shared_gl_context = true;

        launch_apps_as_systemd_services = true;

        animation = {
          enabled = true;
          speed = 1.0;
        };
        shadow = {
          direction = "down";
          alpha = 0.55;
        };
        panel = {
          background_blur = true;
          transparency_mode = "glass";
          borders = true;
          shadow = true;
          launcher_placement = "centered";
          clipboard_placement = "centered";
          control_center_placement = "attached";
          wallpaper_placement = "centered";
          session_placement = "centered";
          open_near_click_control_center = true;
          open_near_click_launcher = false;
          launcher_categories = true;
          open_near_click_clipboard = false;
          open_near_click_wallpaper = false;
          open_near_click_session = false;
        };
        screen_corners = {
          enabled = false;
        };
        mpris = {
          blocklist = [];
        };
        screenshot = {
          save_to_file = true;
          directory = "";
          filename_pattern = "screenshot_%Y%m%d_%H%M%S";
          copy_to_clipboard = true;
          freeze_screen = false;
          pipe_to_command = false;
          pipe_command = "";
        };

        session = {
          actions = [
            {
              action = "lock";
            }
            {
              action = "logout";
              enabled = false;
            }
            {
              action = "suspend";
            }
            {
              action = "reboot";
            }
            {
              action = "shutdown";
            }
          ];
        };
      };

      osd = {
        position = "top_right";
        orientation = "horizontal";
        scale = 1.0;
        lock_key = false;
        keyboard_layout = true;
      };

      keybinds = {
        validate = ["enter"];
        cancel = ["escape"];
      };

      bar = {
        order = ["main"];

        main = {
          enabled = true;
          position = "top";
          auto_hide = false;
          reserve_space = true;

          thickness = 35;
          background_opacity = 0.75;
          border = "outline";
          border_width = 0.0;
          shadow = true;
          contact_shadow = false;
          panel_overlap = 0;
          radius = 12;
          radius_bottom_left = 5;
          radius_bottom_right = 5;
          margin_ends = 10;
          margin_edge = 5;
          padding = 15;
          widget_spacing = 10;
          scale = 1.0;
          font_weight = "regular";

          capsule = false;
          capsule_fill = "surface_variant";
          capsule_radius = 8.0;
          capsule_opacity = 0.8;

          start = [
            "control-center"
            "workspaces"
            "media"
          ];
          center = [
            "caffeine"
            "clock"
            "weather"
          ];
          end = [
            "sysmon"
            "network"
            "bluetooth"
            "volume"
            "brightness"
            "battery"
            "notifications"
          ];
        };
      };
      widget = {
        clock = {
          format = "{:%H:%M}";
        };
        spacer = {
          length = 25;
        };
        workspaces = {
          display = "id";
          minimal = false;
          max_label_chars = 1;
          pill_scale = 1.0;
          focused_color = "primary";
          occupied_color = "secondary";
          empty_color = "surface_variant";
          labels_only_when_occupied = false;
          hide_when_empty = false;
        };
        taskbar = {
          group_by_workspace = true;
          show_all_outputs = false;
          only_active_workspace = false;
          show_workspace_label = true;
          workspace_label_placement = "corner";
          hide_empty_workspaces = true;
          workspace_group_capsule = true;
          group_single_icon_per_app = false;
          show_active_indicator = true;
          active_opacity = 1.0;
          inactive_opacity = 0.75;
          focused_color = "primary";
          occupied_color = "secondary";
          empty_color = "surface_variant";
        };
        active_window = {
          min_length = 80;
          max_length = 260;
          icon_size = 15;
          title_scroll = "on_hover";
          icon_only = false;
        };
        control-center = {
          glyph = "noctalia";

          shortcuts = [
            {
              type = "wifi";
            }
            {
              type = "bluetooth";
            }
            {
              type = "power_profile";
            }
            {
              type = "session";
            }
            {
              type = "screen_time";
            }
          ];
        };
        sysmon = {
          stat = [
            "cpu_usage"
            "cpu_temp"
            "gpu_vram"
            "ram_pct"
            "disk_pct"
          ];
          path = "/";
          display = "gauge";
          show_label = false;
          label_min_width = 0;
        };
        volume = {
          device = "output";
          scroll_step = 2;
          show_label = false;
        };
        audio_visualizer = {
          width = 150;
          bands = 20;
          mirrored = true;
          centered = true;
          show_when_idle = false;
          low_color = "primary";
          high_color = "tertiary";
        };
        media = {
          min_length = 80;
          max_length = 150;
          art_size = 40;
          title_scroll = "on_hover";
          hide_when_no_media = false;
        };
        battery = {
          display_mode = "graphic";
          show_label = false;
          device = "auto";
          warning_threshold = 20;
          warning_color = "error";
        };
        brightness = {
          show_label = false;
        };
        bluetooth = {
          show_label = false;
        };
        network = {
          show_label = false;
        };
        keyboard_layout = {
          cycle_command = "";
          hide_when_single_layout = false;
          show_icon = false;
          show_label = true;
          display = "short";
        };
        # lock_keys = {
        #   display = "short";
        #   show_caps_lock = true;
        #   show_num_lock = true;
        #   show_scroll_lock = false;
        #   hide_when_off = true;
        # };
        launcher = {
          glyph = "search";
        };
        clipboard = {
          glyph = "clipboard";
        };
        screenshot = {
          glyph = "screenshot";
          primary_click = "region";
        };
        weather = {
          max_length = 160;
          show_condition = false;
        };
        notifications = {
          hide_when_no_unread = true;
        };
        tray = {
          hidden = [];
          pinned = [];
          match_adjacent_spacing = false;
          drawer = false;
          drawer_columns = 3;
        };
        session = {
          glyph = "shutdown";
        };
        wallpaper = {
          glyph = "wallpaper-selector";
        };
      };

      dock = {
        enabled = false;
        position = "bottom";
        active_monitor_only = false;
        icon_size = 48;
        padding = 8;
        item_spacing = 6;
        background_opacity = 0.85;
        shadow = true;
        radius = 16;
        margin_ends = 0;
        margin_edge = 8;

        show_running = true;
        auto_hide = true;
        reserve_space = false;

        active_scale = 1.0;
        inactive_scale = 0.85;
        active_opacity = 1.0;
        inactive_opacity = 0.85;
        show_instance_count = true;

        pinned = [
          ""
        ];
      };

      desktop_widgets = {
        enabled = true;
        schema_version = 1;
        widget_order = ["audio_visualizer"];
        widget = {
          audio_visualizer = {
            type = "audio_visualizer";
            output = "eDP-1";
            cx = 920;
            cy = 800;
            scale = 1.0;
            rotation = 0.0;
            settings = {
              bands = 32;
              aspect_ratio = 2.5;
              mirrored = true;
              centered = true;
              show_when_idle = true;
              low_color = "primary";
              high_color = "on_tertiary";
              shadow = true;
              background = true;
              background_color = "surface";
              background_radius = 12;
              background_padding = 10;
            };
          };
        };
      };

      wallpaper = {
        enabled = true;
        fill_mode = "crop";
        fill_color = "#111111";
        transition = [
          "fade"
          "wipe"
          "disc"
          "stripes"
          "zoom"
        ];
        transition_duration = 1500;
        edge_smoothness = 0.5;

        directory = "/home/mik/nixcfg/modules/interface/wallpapers";
        per_monitor_directories = false;

        default.path = "/home/mik/nixcfg/modules/interface/wallpapers/blue/blue_sky.png";

        automation = {
          enabled = true;
          interval_minutes = 5;
          order = "random";
          recursive = true;
        };
      };

      theme = {
        mode = "auto";
        source = "wallpaper";
        wallpaper_scheme = "m3-content";

        templates = {
          enable_builtin_templates = true;
          enable_community_templates = true;
          builtin_ids = [
            "gtk3"
            "gtk4"
            "qt"
            "ghostty"
          ];
          community_ids = [
            "spicetify"
            "obsidian"
            "zed"
            "steam"
            "yazi"
            "zathura"
          ];
          user = {
            hyprland = {
              input_path = "~/nixcfg/modules/interface/desktop/hyprland/noctalia-templates/hyprland.lua";
              output_path = "~/.config/hypr/hyprland-noctalia.lua";
            };
          };
        };
      };

      audio = {
        enable_overdrive = false;
        enable_sounds = false;
        sound_volume = 0.5;
        volume_change_sound = "";
        notification_sound = "";
      };
      brightness = {
        enable_ddcutil = true;
      };
      nightlight = {
        enable = false;
        force = false;

        temperature_day = 6500;
        temperature_night = 4000;

        start_time = "22:30";
        stop_time = "07:00";
      };

      system.monitor = {
        enabled = true;
        cpu_poll_seconds = 5.0;
        gpu_poll_seconds = 5.0;
        memory_poll_seconds = 5.0;
        network_poll_seconds = 3.0;
        disk_poll_seconds = 30;
      };

      weather = {
        enabled = true;
        auto_locate = false;
        address = "Metz, FR";
        refresh_minutes = 30;
        unit = "metric";
      };
      calendar = {
        enabled = false;
        refresh_minutes = 15;
      };

      idle = {
        pre_action_fade_seconds = 5.0;

        behavior = {
          lock = {
            enabled = true;
            timeout = 360;
            command = "noctalia:screen-lock";
          };
          screen-off = {
            enabled = true;
            timeout = 600;
            command = "noctalia:dpms-off";
            resume_command = "noctalia:dpms-on";
          };
        };
      };

      notifications = {
        enable_daemon = true;
        power_profile_notify = true;
        position = "top_right";
        layer = "top";
        background_opacity = 0.95;
        offset_x = 20;
        offset_y = 20;
        monitors = [];
        collapse_on_dismiss = true;
      };
    };
  };
}
