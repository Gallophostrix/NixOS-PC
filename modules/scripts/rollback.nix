{pkgs, ...}:
pkgs.writeShellScriptBin "rollback" ''
  #!/usr/bin/env bash
  set -euo pipefail

  RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; NC='\033[0m\033[K'
  info()  { printf "\n%b%s%b\n" "$GREEN"  "$1" "$NC"; }
  warn()  { printf "%b%s%b\n"   "$YELLOW" "$1" "$NC"; }
  error() { printf "%bError: %s%b\n" "$RED" "$1" "$NC" >&2; }

  # --- No root ---
  if [ "$(id -u)" -eq 0 ]; then
    error "Do not run this script as root."
    exit 1
  fi

  # --- Argument ---
  generation="''${1:-}"
  if [ -z "$generation" ]; then
    error "Please provide a generation number (use: list-gens)"
    exit 1
  fi

  # --- Validate integer ---
  if ! printf '%s' "$generation" | grep -qE '^[0-9]+$'; then
    error "Generation must be a positive integer, got: '$generation'"
    exit 1
  fi

  # --- Validate generation exists ---
  profile_link="/nix/var/nix/profiles/system-$generation-link"
  swcfg_bin="$profile_link/bin/switch-to-configuration"

  if [ ! -e "$profile_link" ]; then
    error "Generation '$generation' does not exist."
    exit 1
  fi
  if [ ! -x "$swcfg_bin" ]; then
    error "switch-to-configuration not found or not executable in generation '$generation'."
    exit 1
  fi

  info "Rolling back to generation: $generation"

  # --- Rollback ---
  if command -v nh >/dev/null 2>&1; then
    nh os rollback -t "$generation"
  else
    sudo "$swcfg_bin" switch
  fi
''
