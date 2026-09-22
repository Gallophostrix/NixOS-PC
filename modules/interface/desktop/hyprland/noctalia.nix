{...}: {
  programs.noctalia = {
    enable = true;
    systemd.enable = true;

    settings = {
      accessibility = {
        high_contrast = false;
        ui_scale = 1.1000000238418579;
      };

      audio = {
        enable_overdrive = false;
        enable_sounds = false;
        notification_sound = "";
        sound_volume = 0.5;
        volume_change_sound = "";
      };

      backdrop = {
        blur_intensity = 0.5;
        enabled = false;
        tint_intensity = 0.30000001192092896;
      };

      bar = {
        order = ["default"];

        default = {
          auto_hide = false;
          background_opacity = 0.75;
          border = "outline";
          border_width = 0.0;
          capsule = false;
          capsule_fill = "on_secondary";
          capsule_opacity = 0.80000001192092896;
          capsule_padding = 6.0;
          capsule_radius = 8.0;
          capsule_thickness = 0.75999999046325684;
          center = ["caffeine" "clock" "date" "weather"];
          concave_edge_corners = true;
          contact_shadow = false;
          enabled = true;
          end = [
            "group:hardware"
            "network"
            "bar_3"
            "bluetooth"
            "volume"
            "brightness"
            "battery"
            "bar_4"
            "notifications"
          ];
          font_scale = 1.0;
          font_weight = 500;
          hover_highlight = true;
          layer = "top";
          margin_edge = 5;
          margin_ends = 10;
          margin_opposite_edge = 0;
          padding = 15;
          panel_overlap = 0;
          position = "top";
          radius = 12;
          radius_bottom_left = 5;
          radius_bottom_right = 5;
          radius_top_left = 12;
          radius_top_right = 12;
          reserve_space = true;
          scale = 1.0;
          shadow = true;
          show_on_workspace_switch = true;
          smart_auto_hide = false;
          start = ["control-center" "workspaces" "media" "audio_visualizer"];
          thickness = 35;
          widget_spacing = 10;

          dead_zone = {};

          capsule_group = [
            {
              accordion = false;
              accordion_direction = "end";
              enabled = true;
              fill = "on_secondary";
              id = "hardware";
              members = ["cpu_usage" "cpu_temp" "gpu_vram" "ram_used"];
              opacity = 0.80000001192092896;
              padding = 6.0;
              radius = 8.0;
            }
          ];
        };
      };

      battery = {
        warning_threshold = 10;

        device = {
          "/org/freedesktop/UPower/devices/headset_dev_80_99_E7_FD_6B_5A" = {
            warning_threshold = 20;
          };
        };
      };

      brightness = {
        enable_ddcutil = true;
        ignore_mmids = [];
        minimum_brightness = 0.0;
        sync_all_monitors = false;
      };

      calendar = {
        enabled = false;
        refresh_minutes = 15;
        event_date_format = "%A %e %B";
        event_time_format = "%H:%M";
      };

      control_center = {
        hidden_tabs = [];
        show_session_button = true;
        show_shortcut_labels = true;
        sidebar = "compact";
        sidebar_section = "compact";
        width = 700;

        calendar = {
          show_events_card = true;
          show_week_numbers = false;
        };

        shortcuts = [
          {type = "wifi";}
          {type = "bluetooth";}
          {type = "power_profile";}
          {type = "session";}
          {type = "screen_time";}
          {type = "clipboard";}
        ];
      };

      desktop_widgets = {
        enabled = true;
        schema_version = 1;
        widget_order = ["audio_visualizer"];

        grid = {
          cell_size = 16;
          major_interval = 4;
          visible = true;
        };

        widget = {
          audio_visualizer = {
            box_height = 320.0;
            box_width = 784.0;
            cx = 1480.0;
            cy = 952.0;
            enabled = true;
            output = "eDP-1";
            placement_height = 1200.0;
            placement_width = 1920.0;
            rotation = 0.0;
            type = "audio_visualizer";

            settings = {
              background = true;
              background_color = "surface";
              background_padding = 10;
              background_radius = 12;
              bands = 36;
              centered = true;
              color_1 = "primary";
              color_2 = "on_tertiary";
              mirrored = true;
              show_when_idle = true;
            };
          };
        };
      };

      dock = {
        active_monitor_only = false;
        active_opacity = 1.0;
        active_scale = 1.0;
        auto_hide = true;
        background_opacity = 0.85000002384185791;
        border = "outline";
        border_width = 0.0;
        concave_edge_corners = true;
        cross_axis_padding = 8;
        enabled = false;
        icon_size = 48;
        inactive_opacity = 0.85000002384185791;
        inactive_scale = 0.85000002384185791;
        item_spacing = 6;
        launcher_custom_image = "";
        launcher_custom_image_colorize = false;
        launcher_icon = "grid-dots";
        launcher_position = "none";
        layer = "top";
        magnification = true;
        magnification_scale = 1.4500000476837158;
        main_axis_padding = 16;
        margin_edge = 8;
        margin_ends = 0;
        monitors = [];
        pinned = [""];
        position = "bottom";
        radius = 16;
        radius_bottom_left = 16;
        radius_bottom_right = 16;
        radius_top_left = 16;
        radius_top_right = 16;
        reserve_space = false;
        shadow = true;
        show_dots = false;
        show_instance_count = true;
        show_running = true;
        smart_auto_hide = false;
      };

      hooks = {
        battery_charging = [];
        battery_discharging = [];
        battery_percentage_changed = [];
        battery_plugged = [];
        bluetooth_disabled = [];
        bluetooth_enabled = [];
        colors_changed = [];
        logging_out = [];
        power_profile_changed = [];
        rebooting = [];
        session_locked = [];
        session_unlocked = [];
        shutting_down = [];
        started = [];
        theme_mode_changed = [];
        wallpaper_changed = [];
        wifi_disabled = [];
        wifi_enabled = [];
      };

      hot_corners = {
        delay_ms = 0;
        enabled = false;

        bottom_left = {
          action = "none";
          command = "";
        };
        bottom_right = {
          action = "none";
          command = "";
        };
        top_left = {
          action = "none";
          command = "";
        };
        top_right = {
          action = "none";
          command = "";
        };
      };

      idle = {
        behavior_order = ["lock" "screen-off"];
        pre_action_fade_seconds = 5.0;

        behavior = {
          lock = {
            action = "lock";
            command = "";
            enabled = true;
            locked_timeout = 0.0;
            resume_command = "";
            timeout = 360.0;
          };
          "screen-off" = {
            action = "screen-on";
            command = "";
            enabled = true;
            locked_timeout = 0.0;
            resume_command = "noctalia:dpms-on";
            timeout = 600.0;
          };
        };
      };

      keybinds = {
        cancel = ["Escape"];
        copy = ["Ctrl+c"];
        delete = ["Delete"];
        down = ["Down"];
        left = ["Left"];
        right = ["Right"];
        save = ["Ctrl+s"];
        tab_next = ["Tab"];
        tab_previous = ["Shift+ISO_Left_Tab"];
        up = ["Up"];
        validate = ["Return"];
      };

      location = {
        address = "Metz, FR";
        auto_locate = false;
        custom_schedule = false;
        sunrise = "";
        sunset = "";
      };

      lockscreen = {
        allow_empty_password = true;
        blur_intensity = 0.20000000298023224;
        blurred_desktop = false;
        enabled = true;
        fingerprint = true;
        lock_before_suspend = true;
        monitors = [];
        tint_intensity = 0.30000001192092896;
        wallpaper = "";
      };

      lockscreen_widgets = {
        enabled = true;
        schema_version = 1;
        widget_order = [
          "lockscreen-login-box@DP-1"
          "lockscreen-login-box@eDP-1"
          "audio_visualizer_main"
          "clock_main"
          "lockscreen-widget-0000000000000001"
          "media_player_main"
          "weather_main"
        ];

        grid = {
          cell_size = 16;
          major_interval = 4;
          visible = true;
        };

        widget = {
          audio_visualizer_main = {
            box_height = 128.0;
            box_width = 400.0;
            cx = 960.0;
            cy = 840.0;
            enabled = true;
            output = "eDP-1";
            placement_height = 1200.0;
            placement_width = 1920.0;
            rotation = 0.0;
            type = "audio_visualizer";

            settings = {
              background = true;
              background_color = "surface";
              background_padding = 10;
              background_radius = 12;
              bands = 32;
              centered = true;
              color_1 = "on_primary";
              color_2 = "primary";
              mirrored = true;
              show_when_idle = true;
            };
          };

          clock_main = {
            box_height = 144.0;
            box_width = 256.0;
            cx = 1707.550048828125;
            cy = 193.5;
            enabled = true;
            output = "eDP-1";
            placement_height = 1200.0;
            placement_width = 1920.0;
            rotation = 0.0;
            type = "clock";

            settings = {};
          };

          "lockscreen-login-box@DP-1" = {
            box_height = 196.0;
            box_width = 720.0;
            cx = 1290.0;
            cy = 957.0;
            enabled = false;
            output = "DP-1";
            placement_height = 0.0;
            placement_width = 0.0;
            rotation = 0.0;
            type = "login_box";

            settings = {
              background_color = "surface_variant";
              background_opacity = 0.88;
              background_radius = 12.0;
              center_password_text = false;
              input_opacity = 1.0;
              input_radius = 6.0;
              layout = "regular";
              show_caps_lock = true;
              show_keyboard_layout = true;
              show_login_button = true;
              show_media = true;
              show_session_buttons = true;
              show_unlock_hint = true;
              show_weather = true;
            };
          };

          "lockscreen-login-box@eDP-1" = {
            box_height = 196.0;
            box_width = 720.0;
            cx = 960.0;
            cy = 1077.0;
            enabled = true;
            output = "eDP-1";
            placement_height = 1200.0;
            placement_width = 1920.0;
            rotation = 0.0;
            type = "login_box";

            settings = {
              background_color = "surface_variant";
              background_opacity = 0.88;
              background_radius = 12.0;
              center_password_text = false;
              input_opacity = 1.0;
              input_radius = 6.0;
              layout = "regular";
              show_caps_lock = true;
              show_keyboard_layout = true;
              show_login_button = true;
              show_media = true;
              show_session_buttons = true;
              show_unlock_hint = true;
              show_weather = true;
            };
          };

          lockscreen-widget-0000000000000001 = {
            box_height = 0.0;
            box_width = 0.0;
            cx = 0.0;
            cy = 0.0;
            enabled = false;
            output = "eDP-1";
            placement_height = 1200.0;
            placement_width = 1920.0;
            rotation = 0.0;
            type = "clock";

            settings = {};
          };

          media_player_main = {
            box_height = 240.0;
            box_width = 496.0;
            cx = 2202.0;
            cy = 196.0;
            enabled = true;
            output = "DP-1";
            placement_height = 0.0;
            placement_width = 0.0;
            rotation = 0.0;
            type = "media_player";

            settings = {};
          };

          weather_main = {
            box_height = 144.0;
            box_width = 256.0;
            cx = 1707.550048828125;
            cy = 384.0;
            enabled = true;
            output = "eDP-1";
            placement_height = 1200.0;
            placement_width = 1920.0;
            rotation = 0.0;
            type = "weather";

            settings = {};
          };
        };
      };

      nightlight = {
        enabled = false;
        force = false;
        temperature_day = 6500;
        temperature_night = 4000;
      };

      notification = {
        background_opacity = 0.97000002861022949;
        border = true;
        collapse_on_dismiss = true;
        enable_daemon = true;
        history_retention_hours = 0;
        layer = "top";
        max_visible = 0;
        monitors = [];
        offset_x = 20;
        offset_y = 8;
        position = "top_right";
        scale = 1.0;
        show_actions = true;
        show_app_name = true;
      };

      osd = {
        background_opacity = 0.89999997615814209;
        border = true;
        enabled = true;
        monitors = ["eDP-1"];
        offset_x = 20;
        offset_y = 10;
        orientation = "horizontal";
        position = "top_right";
        position_vertical = "top_center";
        scale = 1.0;

        kinds = {
          bluetooth = true;
          brightness = true;
          caffeine = true;
          dnd = true;
          keyboard_backlight = true;
          keyboard_layout = true;
          lock_keys = true;
          media = true;
          nightlight = true;
          power_profile = true;
          privacy = true;
          volume = true;
          volume_input = true;
          volume_output = true;
          wifi = true;
        };
      };

      plugins = {
        auto_update = "all";
        enabled = [
          "blackbartblues/keymap"
          "rylos/syncthing"
          "rylos/tailnet"
          "aristides/udiskie"
        ];

        source = [
          {
            enabled = true;
            kind = "git";
            location = "https://github.com/noctalia-dev/official-plugins";
            name = "official";
          }
          {
            enabled = true;
            kind = "git";
            location = "https://github.com/noctalia-dev/community-plugins";
            name = "community";
          }
        ];
      };

      shell = {
        app_icon_colorize = false;
        avatar_path = "/mnt/data/Images/Affichage/Photo de profil/Gallophostrix.png";
        button_borders = true;
        card_borders = true;
        clipboard_auto_paste = "auto";
        clipboard_confirm_clear_history = false;
        clipboard_enabled = true;
        clipboard_history_max_entries = 50;
        clipboard_image_action_command = "";
        clipboard_keep_from_closed_apps = true;
        corner_radius_scale = 1.0;
        date_format = "{:%A, %d %B %Y}";
        disable_mipmaps = false;
        external_ip_enabled = false;
        font_family = "Winter Draw";
        input_borders = true;
        lang = "en";
        launch_apps_as_systemd_services = true;
        launch_apps_custom_command = "";
        niri_overview_type_to_launch_enabled = false;
        offline_mode = false;
        password_style = "random";
        polkit_agent = true;
        popup_borders = true;
        popup_shadows = true;
        screen_time_enabled = true;
        settings_show_advanced = true;
        settings_window_translucent = false;
        setup_wizard_enabled = true;
        shared_gl_context = true;
        show_location = true;
        telemetry_enabled = false;
        time_format = "{:%H:%M}";

        animation = {
          enabled = true;
          speed = 1.0;
        };

        greeter_sync = {
          auto_sync = false;
        };

        keyboard_layout = {};

        launcher = {
          app_grid = false;
          auto_paste = "auto";
          categories = true;
          compact = false;
          fetch_exchange_rates = true;
          pinned = [];
          provider_prefix = "/";
          show_app_actions = false;
          show_app_origin_indicator = true;
          show_icons = true;
          sort_by_usage = true;

          dmenu = {};
        };

        mpris = {
          blacklist = [];
        };

        panel = {
          borders = true;
          clipboard_placement = "floating";
          clipboard_position = "center";
          control_center_placement = "attached";
          control_center_position = "auto";
          floating_layer = "overlay";
          floating_offset = 8;
          launcher_placement = "floating";
          launcher_position = "center";
          list_item_background = false;
          open_near_click_clipboard = false;
          open_near_click_control_center = true;
          open_near_click_launcher = false;
          open_near_click_session = true;
          open_near_click_wallpaper = true;
          polkit_placement = "floating";
          polkit_position = "center";
          session_placement = "floating";
          session_position = "center";
          shadow = true;
          transparency_mode = "glass";
          wallpaper_placement = "floating";
          wallpaper_position = "center";
        };

        privacy = {
          cam_filter_regex = "";
          mic_filter_regex = "";
          screen_filter_regex = "";
        };

        screen_corners = {
          enabled = false;
          size = 32;
        };

        screenshot = {
          confirm_region = false;
          copy_to_clipboard = true;
          directory = "";
          filename_pattern = "screenshot_%Y%m%d_%H%M%S";
          freeze_screen = false;
          pipe_command = "";
          pipe_to_command = false;
          remember_last_region = false;
          save_to_file = true;
          show_cursor = false;
        };

        session = {
          grid = false;
          grid_columns = 3;
          show_shortcuts = true;

          power = {};

          actions = [
            {
              action = "lock";
              command = "";
              countdown_seconds = 0.0;
              enabled = true;
              glyph = "";
              label = "";
              shortcut = "";
              variant = "default";
            }
            {
              action = "logout";
              command = "";
              countdown_seconds = 0.0;
              enabled = false;
              glyph = "";
              label = "";
              shortcut = "";
              variant = "default";
            }
            {
              action = "suspend";
              command = "";
              countdown_seconds = 0.0;
              enabled = true;
              glyph = "";
              label = "";
              shortcut = "";
              variant = "default";
            }
            {
              action = "reboot";
              command = "";
              countdown_seconds = 0.0;
              enabled = true;
              glyph = "";
              label = "";
              shortcut = "";
              variant = "default";
            }
            {
              action = "shutdown";
              command = "";
              countdown_seconds = 0.0;
              enabled = true;
              glyph = "";
              label = "";
              shortcut = "";
              variant = "default";
            }
          ];
        };

        shadow = {
          alpha = 0.55000001192092896;
          direction = "down";
        };
      };

      storage = {
        key_file = "";
        key_source = "secret-service";
      };

      system.monitor = {
        cpu_freq_activity_threshold = 2.5;
        cpu_freq_critical_threshold = 4.5;
        cpu_poll_seconds = 5.0;
        cpu_temp_activity_threshold = 60.0;
        cpu_temp_critical_threshold = 85.0;
        cpu_temp_sensor_path = "";
        cpu_usage_activity_threshold = 50.0;
        cpu_usage_critical_threshold = 90.0;
        disk_free_activity_threshold = 80.0;
        disk_free_critical_threshold = 95.0;
        disk_free_pct_activity_threshold = 80.0;
        disk_free_pct_critical_threshold = 95.0;
        disk_poll_seconds = 30.0;
        disk_used_activity_threshold = 80.0;
        disk_used_critical_threshold = 95.0;
        disk_used_pct_activity_threshold = 80.0;
        disk_used_pct_critical_threshold = 95.0;
        enabled = true;
        gpu_poll_seconds = 5.0;
        gpu_temp_activity_threshold = 60.0;
        gpu_temp_critical_threshold = 85.0;
        gpu_usage_activity_threshold = 50.0;
        gpu_usage_critical_threshold = 95.0;
        gpu_vram_activity_threshold = 50.0;
        gpu_vram_critical_threshold = 90.0;
        memory_poll_seconds = 5.0;
        net_rx_activity_threshold = 1.0;
        net_rx_critical_threshold = 50.0;
        net_tx_activity_threshold = 1.0;
        net_tx_critical_threshold = 50.0;
        network_poll_seconds = 3.0;
        ram_pct_activity_threshold = 60.0;
        ram_pct_critical_threshold = 90.0;
        swap_pct_activity_threshold = 20.0;
        swap_pct_critical_threshold = 80.0;
      };

      theme = {
        builtin = "Noctalia";
        community_palette = "Oxocarbon";
        custom_palette = "";
        mode = "dark";
        pure_black_dark = false;
        source = "wallpaper";
        wallpaper_scheme = "m3-content";

        templates = {
          builtin_ids = ["gtk3" "gtk4" "qt" "ghostty"];
          community_ids = ["spicetify" "obsidian" "zed" "bat" "papirus-icons" "steam" "yazi" "zathura"];
          enable_builtin_templates = true;
          enable_community_templates = true;

          user.hyprland = {
            compare_to = "";
            enabled = true;
            index = 0;
            input_path = "~/nixcfg/modules/interface/desktop/hyprland/noctalia-templates/hyprland.lua";
            output_path = ["~/.config/hypr/hyprland-noctalia.lua"];
            output_path_dynamic = "";
            post_action = "";
            post_hook = "";
            pre_hook = "";
          };
        };
      };

      wallpaper = {
        directory = "/home/mik/nixcfg/modules/interface/wallpapers";
        directory_dark = "";
        directory_light = "";
        edge_smoothness = 0.5;
        enabled = true;
        fill_color = "#111111";
        fill_mode = "crop";
        per_monitor_directories = false;
        transition = ["fade" "wipe" "disc" "stripes" "zoom"];
        transition_duration = 1500.0;
        transition_on_startup = false;

        automation = {
          enabled = true;
          interval_seconds = 300;
          order = "random";
          recursive = true;
        };
      };

      weather = {
        effects = true;
        enabled = true;
        refresh_minutes = 30;
        unit = "metric";
      };

      widget = {
        active_window = {
          icon_size = 15;
          max_length = 260;
          min_length = 80;
          title_scroll = "on_hover";
          type = "active_window";
        };

        audio_visualizer = {
          bands = 20;
          color_1 = "primary";
          color_2 = "on_primary";
          mirrored = true;
          show_when_idle = false;
          type = "audio_visualizer";
          width = 150;
        };

        bar = {
          type = "rylos/syncthing:bar";
        };

        bar_2 = {
          show_count = false;
          type = "rylos/tailnet:bar";
        };

        bar_3 = {
          show_count = false;
          type = "rylos/tailnet:bar";
        };

        bar_4 = {
          type = "rylos/syncthing:bar";
        };

        battery = {
          device = "auto";
          display_mode = "graphic";
          show_label = false;
          type = "battery";
          warning_color = "error";
        };

        bluetooth = {
          show_label = false;
          type = "bluetooth";
        };

        brightness = {
          show_label = false;
          type = "brightness";
        };

        clipboard = {
          glyph = "clipboard";
          type = "clipboard";
        };

        clock = {
          format = "{:%H:%M}";
          type = "clock";
        };

        "control-center" = {
          glyph = "noctalia";
          type = "control-center";
        };

        cpu = {
          stat = "cpu_usage";
          type = "sysmon";
        };

        cpu_temp = {
          show_value = false;
          stat = "cpu_temp";
          type = "sysmon";
        };

        cpu_usage = {
          show_value = false;
          stat = "cpu_usage";
          type = "sysmon";
        };

        date = {
          format = "{:%a %d %b}";
          type = "clock";
        };

        gpu_vram = {
          show_value = false;
          stat = "gpu_vram";
          type = "sysmon";
        };

        input_volume = {
          device = "input";
          type = "volume";
        };

        keyboard_layout = {
          display = "short";
          hide_when_single_layout = false;
          show_glyph = false;
          show_label = true;
          type = "keyboard_layout";
        };

        launcher = {
          glyph = "search";
          type = "launcher";
        };

        lock_keys = {
          display = "short";
          hide_when_off = true;
          show_caps_lock = false;
          show_num_lock = true;
          show_scroll_lock = false;
          type = "lock_keys";
        };

        media = {
          art_size = 40;
          hide_when_no_media = false;
          max_length = 150;
          min_length = 80;
          title_scroll = "on_hover";
          type = "media";
        };

        network = {
          show_label = false;
          type = "network";
        };

        network_rx = {
          stat = "net_rx";
          type = "sysmon";
        };

        network_tx = {
          stat = "net_tx";
          type = "sysmon";
        };

        notifications = {
          hide_when_no_unread = true;
          type = "notifications";
        };

        output_volume = {
          device = "output";
          type = "volume";
        };

        ram = {
          stat = "ram_used";
          type = "sysmon";
        };

        ram_used = {
          show_value = false;
          stat = "ram_used";
          type = "sysmon";
        };

        screenshot = {
          glyph = "screenshot";
          type = "screenshot";

          actions = {
            left = "region";
          };
        };

        session = {
          glyph = "shutdown";
          type = "session";
        };

        spacer = {
          interactive = false;
          length = 25;
          type = "spacer";
        };

        status = {
          hide_when_empty = true;
          type = "aristides/udiskie:status";
        };

        taskbar = {
          active_opacity = 1.0;
          empty_color = "surface_variant";
          focused_color = "on_primary";
          group_by_workspace = true;
          group_single_icon_per_app = false;
          hide_empty_workspaces = true;
          inactive_opacity = 0.75;
          occupied_color = "secondary";
          only_active_workspace = false;
          show_active_indicator = true;
          show_all_outputs = false;
          show_workspace_label = true;
          type = "taskbar";
          workspace_group_capsule = true;
          workspace_label_placement = "corner";
        };

        temp = {
          stat = "cpu_temp";
          type = "sysmon";
        };

        tray = {
          drawer = false;
          drawer_columns = 3;
          hidden = [];
          match_adjacent_spacing = false;
          pinned = [];
          type = "tray";
        };

        volume = {
          device = "output";
          show_label = false;
          type = "volume";

          actions = {
            scroll_down = "volume-down 2";
            scroll_up = "volume-up 2";
          };
        };

        wallpaper = {
          glyph = "wallpaper-selector";
          type = "wallpaper";
        };

        weather = {
          max_length = 160;
          show_condition = false;
          type = "weather";
        };

        workspaces = {
          change_color_on_hover = true;
          empty_color = "surface_variant";
          focused_color = "primary";
          focused_output_only = true;
          label_source = "id";
          occupied_color = "on_primary";
          show_labels = true;
          type = "workspaces";
        };
      };
    };
  };
}
