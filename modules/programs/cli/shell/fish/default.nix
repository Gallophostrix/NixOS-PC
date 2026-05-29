{...}: {
  imports = [
    ../packages.nix
  ];

  programs.fish = {
    enable = true;

    # Aliases
    shellAliases = {
      l = "eza -lh --icons=auto";
      ls = "eza -1 --icons=auto";
      ll = "eza -lha --icons=auto --sort=name --group-directories-first";
      ld = "eza -lhD --icons=auto";
      tree = "eza --icons=auto --tree";
      nf = "microfetch";
      cp = "cp -iv";
      mv = "mv -iv";
      rm = "rm -vI";
      bc = "bc -ql";
      mkd = "mkdir -pv";
      tp = "trash-put";
      tpr = "trash-restore";
      grep = "rg --color always";
      rg = "rg --color always";
      "list-gens" = "nixos-rebuild list-generations";
      "update-input" = "nix flake update";
      sysup = "nix flake update --flake ~/nixcfg";
    };

    functions = {
      fnew = {
        description = "Create flake from template and cd into it";
        argumentNames = ["template" "dir"];
        body = ''
          if test -d "$dir"
            echo "Directory already exists"
            return 1
          end

          nix flake new "$dir" --template ~/nixcfg/dev-shells#$template
          cd "$dir"
          direnv allow
        '';
      };
      finit = {
        description = "Initialize flake from template";
        argumentNames = ["template"];
        body = ''
          nix flake init --template ~/nixcfg/dev-shells#$template
          direnv allow
        '';
      };
    };

    interactiveShellInit = ''
      if status is-interactive
        if type -q zoxide
          zoxide init fish | source
        end

        bind \ca beginning-of-line
        bind \ce end-of-line

        set -g fish_greeting
        set -g fish_autosuggestion yes
        set -g fish_history_size 100000
        if not set -q fish_history
         set -U fish_history fish
        end
        set -g fish_prompt_subst yes
        set -g fish_always_to_end yes
        set -g fish_append_history yes
        set -g fish_auto_menu yes
        set -g fish_complete_in_word yes
        set -g fish_extended_history yes
        set -g fish_hist_expire_dups_first yes
        set -g fish_hist_ignore_dups yes
        set -g fish_hist_ignore_space yes
        set -g fish_hist_verify yes
        set -g fish_inc_append_history yes
        set -g fish_share_history yes

        set -gx XMONAD_CONFIG_DIR (set -q XDG_CONFIG_HOME; or echo ~/.config)/xmonad
        set -gx XMONAD_DATA_DIR   (set -q XDG_DATA_HOME;  or echo ~/.local/share)/xmonad
        set -gx XMONAD_CACHE_DIR  (set -q XDG_CACHE_HOME; or echo ~/.cache)/xmonad
        set -gx FZF_DEFAULT_OPTS "--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 --color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 --color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"

        set -g fish_color_normal normal
        set -g fish_color_command b294bb
        set -g fish_color_keyword b294bb
        set -g fish_color_quote b5bd68
        set -g fish_color_redirection 8abeb7
        set -g fish_color_end b294bb
        set -g fish_color_error cc6666
        set -g fish_color_param 81a2be
        set -g fish_color_valid_path --underline
        set -g fish_color_option 81a2be
        set -g fish_color_comment f0c674
        set -g fish_color_selection white --bold --background=brblack
        set -g fish_color_operator 00a6b2
        set -g fish_color_escape 00a6b2
        set -g fish_color_autosuggestion 969896
        set -g fish_color_cwd green
        set -g fish_color_cwd_root red
        set -g fish_color_user --bold green
        set -g fish_color_host --bold
        set -g fish_color_host_remote --bold yellow=
        set -g fish_color_status red
        set -g fish_color_cancel --reverse=
        set -g fish_color_search_match bryellow --background=brblack
        set -g fish_color_history_current --bold

        set -g fish_key_bindings fish_default_key_bindings
        # __ensure_uvar fish_pager_color_background ""
        # __ensure_uvar fish_pager_color_completion normal
        # __ensure_uvar fish_pager_color_description B3A06D
        # __ensure_uvar fish_pager_color_prefix normal --bold --underline
        # __ensure_uvar fish_pager_color_progress brwhite --background=cyan
        # __ensure_uvar fish_pager_color_secondary_background ""
        # __ensure_uvar fish_pager_color_secondary_completion ""
        # __ensure_uvar fish_pager_color_secondary_description ""
        # __ensure_uvar fish_pager_color_secondary_prefix ""
        # __ensure_uvar fish_pager_color_selected_background --background=brblack
        # __ensure_uvar fish_pager_color_selected_completion ""
        # __ensure_uvar fish_pager_color_selected_description ""
        # __ensure_uvar fish_pager_color_selected_prefix ""
        set -g fish_prompt_transient_enable 1


      end
    '';
  };
}
