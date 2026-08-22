# Declarative package list. Install/sync everything with:
#   brew bundle --file=Brewfile
#
# To see what's installed but NOT listed here (candidates for removal):
#   brew bundle cleanup --file=Brewfile
# Add --force to actually remove them.

# # # # # # # # # # # # # # # # # # # # # # # #
# #                  TAPS                    # #
# # # # # # # # # # # # # # # # # # # # # # # #

tap "homebrew/bundle"

# # # # # # # # # # # # # # # # # # # # # # # #
# #                  SHELL                   # #
# # # # # # # # # # # # # # # # # # # # # # # #

brew "powerlevel10k"           # prompt theme (sourced in zsh/zshrc)
brew "zsh-autosuggestions"     # inline history suggestions
brew "zsh-syntax-highlighting" # command syntax colouring

# # # # # # # # # # # # # # # # # # # # # # # #
# #                CORE CLI                  # #
# # # # # # # # # # # # # # # # # # # # # # # #

brew "git"
brew "gh"                      # GitHub CLI — also handles auth on a new machine
brew "coreutils"               # GNU utils (gdate, gsed, ...)
brew "curl"
brew "wget"
brew "rsync"
brew "tree"
brew "jq"                      # JSON processing

# # # # # # # # # # # # # # # # # # # # # # # #
# #             MODERN REPLACEMENTS          # #
# # # # # # # # # # # # # # # # # # # # # # # #

brew "ripgrep"                 # rg — grep
brew "fd"                      # fd — find
brew "eza"                     # eza — ls
brew "bat"                     # bat — cat, with syntax highlighting
brew "zoxide"                  # z — smarter cd
brew "fzf"                     # fuzzy finder (see zsh/custom/fzf-aliases.zsh)

# # # # # # # # # # # # # # # # # # # # # # # #
# #                   GIT                    # #
# # # # # # # # # # # # # # # # # # # # # # # #

brew "difftastic"              # structural diffs — set as diff.external in gitconfig
brew "git-delta"               # pager-style diffs
brew "lazygit"                 # git TUI

# # # # # # # # # # # # # # # # # # # # # # # #
# #           LANGUAGES / RUNTIMES           # #
# # # # # # # # # # # # # # # # # # # # # # # #

# mise manages node / java / python / ruby versions — see mise/config.toml.
# Do NOT add nvm, rbenv or pyenv here; mise replaces all three.
brew "mise"

brew "dotnet"

# # # # # # # # # # # # # # # # # # # # # # # #
# #            CONTAINERS / DATA             # #
# # # # # # # # # # # # # # # # # # # # # # # #

brew "colima"                  # container runtime (no Docker Desktop)
brew "docker"                  # docker CLI only
brew "docker-completion"
brew "postgresql@15"
brew "supabase/tap/supabase"

# # # # # # # # # # # # # # # # # # # # # # # #
# #                  MISC                    # #
# # # # # # # # # # # # # # # # # # # # # # # #

brew "cloudflared"             # cloudflare tunnels
brew "ffmpeg"                  # media transcoding
brew "pngquant"                # png compression
brew "jadx"                    # android dex decompiler

# # # # # # # # # # # # # # # # # # # # # # # #
# #                  APPS                    # #
# # # # # # # # # # # # # # # # # # # # # # # #

cask "ghostty"                 # terminal — config in ghostty/
cask "visual-studio-code"
cask "cursor"
cask "raycast"
cask "1password"
cask "google-chrome"
cask "slack"
cask "spotify"
cask "notion"
cask "ngrok"

# # # # # # # # # # # # # # # # # # # # # # # #
# #                  FONTS                   # #
# # # # # # # # # # # # # # # # # # # # # # # #

# Nerd Font patched for powerlevel10k glyphs. Replaces the manual font
# download step the old README described.
cask "font-meslo-lg-nerd-font"

# Ghostty is configured to use Fira Code (see ghostty/config).
cask "font-fira-code-nerd-font"
