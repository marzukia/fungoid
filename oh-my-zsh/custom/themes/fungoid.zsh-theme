# Fungoid Theme - iTerm2/Zsh theme
# Orange and green dominant brand colors
#
# https://github.com/marzukia/fungoid

# Set theme name
ZSH_THEME_FUNGOID_NAME="fungoid"

# Color definitions - bright, visible colors
# Background/Foreground
ZSH_THEME_FUNGOID_BG="%K{236}"      # Dark grey bg
ZSH_THEME_FUNGOID_FG="%F{231}"      # Bright white

# Brand colors - orange and green dominant
ZSH_THEME_FUNGOID_ORANGE="%F{214}"  # Bright orange
ZSH_THEME_FUNGOID_GREEN="%F{83}"    # Bright green
ZSH_THEME_FUNGOID_MUTED="%F{245}"   # Light grey
ZSH_THEME_FUNGOID_RED="%F{203}"     # Bright red
ZSH_THEME_FUNGOID_WHITE="%F{231}"   # White

# Accent colors
ZSH_THEME_FUNGOID_DISCORD="%F{69}"  # Bright blue
ZSH_THEME_FUNGOID_TEAL="%F{80}"     # Bright teal
ZSH_THEME_FUNGOID_YELLOW="%F{226}"  # Bright yellow
ZSH_THEME_FUNGOID_BLUE="%F{75}"     # Bright blue
ZSH_THEME_FUNGOID_MAGENTA="%F{213}" # Bright magenta
ZSH_THEME_FUNGOID_CYAN="%F{50}"     # Bright cyan

# Diff colors
ZSH_THEME_FUNGOID_DIFF_ADD="%F{70}%K{22}"     # Green on dark forest green
ZSH_THEME_FUNGOID_DIFF_REMOVE="%F{209}%K{52}" # Light red on dark red

# Code highlighting
ZSH_THEME_FUNGOID_KEYWORD="%F{226}"   # Bright yellow
ZSH_THEME_FUNGOID_STRING="%F{71}"     # Green

# Prompt configuration
ZSH_THEME_FUNGOID_PROMPT_SYMBOL="»"
ZSH_THEME_FUNGOID_PROMPT_SECONDARY="»"

# Prompt elements
ZSH_THEME_FUNGOID_USER_PROMPT="%{$ZSH_THEME_FUNGOID_ORANGE%}%n%{$ZSH_THEME_FUNGOID_FG%}@%{$ZSH_THEME_FUNGOID_BLUE%}%m"
ZSH_THEME_FUNGOID_PATH_PROMPT="%{$ZSH_THEME_FUNGOID_MUTED%}%~"
ZSH_THEME_FUNGOID_GIT_PROMPT="%{$ZSH_THEME_FUNGOID_TEAL%}$(git_prompt_info)%{$ZSH_THEME_FUNGOID_FG%}"
ZSH_THEME_FUNGOID_STATUS_PROMPT="%{$ZSH_THEME_FUNGOID_GREEN%}%?%{$ZSH_THEME_FUNGOID_FG%}"

# Left prompt
ZSH_THEME_FUNGOID_PROMPT_LEFT="%{$ZSH_THEME_FUNGOID_ORANGE%}$ZSH_THEME_FUNGOID_PROMPT_SYMBOL%{$ZSH_THEME_FUNGOID_FG%} "

# Right prompt - hostname, branch, time
ZSH_THEME_FUNGOID_PROMPT_RIGHT="%{$ZSH_THEME_FUNGOID_CYAN%}%m%{$ZSH_THEME_FUNGOID_MUTED%}$(git_prompt_info)%{$ZSH_THEME_FUNGOID_GREEN%}%D{%H:%M:%S}%{$ZSH_THEME_FUNGOID_FG%}"

# Prompt setup
function fungoid_prompt_setup() {
  # Enable git prompt
  zstyle ':vcs_info:git:*' formats '%b'
  
  # Set prompt
  PROMPT="%{$ZSH_THEME_FUNGOID_ORANGE%}»%{$ZSH_THEME_FUNGOID_FG%} "
}

function fungoid_precmd() {
  # Right prompt: hostname | branch | time
  RPROMPT="%{$ZSH_THEME_FUNGOID_CYAN%}%m%{$ZSH_THEME_FUNGOID_MUTED%}$(git_prompt_info)%{$ZSH_THEME_FUNGOID_GREEN%}%D{%H:%M:%S}%{$ZSH_THEME_FUNGOID_FG%}"
}

# Register the theme
zstyle ':prompt:fungoid:setup' answer 'yes'
