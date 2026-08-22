### ✨ Modern CLI replacements
#
# These shadow the classic tools with friendlier equivalents (installed via
# Brewfile). The originals are always reachable by their real names —
# `command ls`, `/bin/cat`, `\ls` — if a script or habit needs them.

### 📂 eza — ls
if (( $+commands[eza] )); then
  alias ls='eza --group-directories-first'
  alias ll='eza -l --group-directories-first --git'
  alias la='eza -la --group-directories-first --git'
  alias lt='eza --tree --level=2 --group-directories-first'
fi

### 🦇 bat — cat
if (( $+commands[bat] )); then
  alias cat='bat --paging=never'
  # Plain, unstyled output — for piping or copying.
  alias catp='bat --paging=never --style=plain'
  export BAT_THEME="Solarized (dark)"
  # Use bat to colourise man pages.
  export MANPAGER="sh -c 'col -bx | bat -l man -p'"
fi

### 🔍 ripgrep / fd
# rg and fd are used under their own names — no aliases, so muscle memory for
# `grep` and `find` keeps working with the real tools.

### 🐙 lazygit
(( $+commands[lazygit] )) && alias lg='lazygit'
