#!/usr/bin/env bash
# Symlink helper. Idempotent and non-destructive:
#   - correct link already in place  -> no-op
#   - wrong link                     -> replaced
#   - real file/dir                  -> backed up to <target>.backup-<timestamp>, then linked

BACKUP_STAMP="${BACKUP_STAMP:-$(date +%Y%m%d-%H%M%S)}"

link() {
  local src="$1" dest="$2"

  if [[ ! -e "$src" ]]; then
    printf '  ✗ %s — source missing (%s)\n' "$dest" "$src"
    return 1
  fi

  mkdir -p "$(dirname "$dest")"

  if [[ -L "$dest" ]]; then
    if [[ "$(readlink "$dest")" == "$src" ]]; then
      printf '  ✓ %s\n' "$dest"
      return 0
    fi
    rm "$dest"
  elif [[ -e "$dest" ]]; then
    local backup="${dest}.backup-${BACKUP_STAMP}"
    mv "$dest" "$backup"
    printf '  ⚑ %s — existing file backed up to %s\n' "$dest" "$(basename "$backup")"
  fi

  ln -s "$src" "$dest"
  printf '  → %s -> %s\n' "$dest" "$src"
}
