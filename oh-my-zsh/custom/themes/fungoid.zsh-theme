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
ZSH_THEME_FUNGOID_ORANGE="%F{214}"  # Bright orange #ff7800
ZSH_THEME_FUNGOID_GREEN="%F{83}"    # Bright green #3cdc50
ZSH_THEME_FUNGOID_MUTED="%F{245}"   # Light grey
ZSH_THEME_FUNGOID_RED="%F{196}"     # True red #ff5a5a
ZSH_THEME_FUNGOID_YELLOW="%F{220}"  # Bright yellow #ffbe00
ZSH_THEME_FUNGOID_WHITE="%F{231}"   # White

# Accent colors
ZSH_THEME_FUNGOID_DISCORD="%F{69}"  # Bright blue
ZSH_THEME_FUNGOID_TEAL="%F{80}"     # Bright teal
ZSH_THEME_FUNGOID_BLUE="%F{75}"     # Bright blue
ZSH_THEME_FUNGOID_MAGENTA="%F{213}" # Bright magenta
ZSH_THEME_FUNGOID_CYAN="%F{50}"     # Bright cyan

# Diff colors
ZSH_THEME_FUNGOID_DIFF_ADD="%F{70}%K{22}"     # Green on dark forest green
ZSH_THEME_FUNGOID_DIFF_REMOVE="%F{209}%K{52}" # Light red on dark red

# Code highlighting
ZSH_THEME_FUNGOID_KEYWORD="%F{220}"   # Bright yellow
ZSH_THEME_FUNGOID_STRING="%F{71}"     # Green

# Prompt configuration
ZSH_THEME_FUNGOID_PROMPT_SYMBOL="»"
ZSH_THEME_FUNGOID_PROMPT_SECONDARY="»"

# Prompt elements
ZSH_THEME_FUNGOID_USER_PROMPT="%{$ZSH_THEME_FUNGOID_ORANGE%}%n%{$ZSH_THEME_FUNGOID_FG%}@%{$ZSH_THEME_FUNGOID_BLUE%}%m"
ZSH_THEME_FUNGOID_PATH_PROMPT="%{$ZSH_THEME_FUNGOID_MUTED%}%~"
ZSH_THEME_FUNGOID_GIT_PROMPT="%{$ZSH_THEME_FUNGOID_TEAL%}$(git_prompt_info)%{$ZSH_THEME_FUNGOID_FG%}"
ZSH_THEME_FUNGOID_TIME_PROMPT="%{$ZSH_THEME_FUNGOID_MUTED%}[%D{%H:%M:%S}]"
# Register the theme and enable precmd hook
zstyle ':prompt:fungoid:setup' answer 'yes'
precmd_functions+=('fungoid_precmd')

# Add timestamp and git status to precmd
fungoid_precmd() {
  # Update git status
  vcs_info
}

# Preexec for command timing
preexec_functions+=('preexec_timer')
preexec_timer() {
  TIMER=$(date +%s%N)
}

precmd_functions+=('precmd_timer')
precmd_timer() {
  if [[ -n "$TIMER" ]]; then
    local cmd_time=$(( ($(date +%s%N) - $TIMER) / 1000000 ))
    ZSH_THEME_FUNGOID_TIME_PROMPT="%{$ZSH_THEME_FUNGOID_MUTED%}[%D{%H:%M:%S}] %{$ZSH_THEME_FUNGOID_YELLOW%}${cmd_time}ms%{$ZSH_THEME_FUNGOID_FG%}"
  fi
}
ZSH_THEME_FUNGOID_STATUS_PROMPT="%{$ZSH_THEME_FUNGOID_GREEN%}%?%{$ZSH_THEME_FUNGOID_FG%}"

# Actual prompt display
PROMPT="${ZSH_THEME_FUNGOID_USER_PROMPT} ${ZSH_THEME_FUNGOID_PATH_PROMPT} ${ZSH_THEME_FUNGOID_GIT_PROMPT} ${ZSH_THEME_FUNGOID_TIME_PROMPT}
${ZSH_THEME_FUNGOID_PROMPT_SYMBOL} "

RPS1="${ZSH_THEME_FUNGOID_STATUS_PROMPT}"

# zsh-syntax-highlighting setup (add to ~/.zshrc after sourcing this theme):
# ZSH_HIGHLIGHT_STYLES=(
#   builtin:%F{220}    # yellow like keywords
#   command:%F{83}     # green like functions
#   reserved_word:%F{220}   # yellow
#   word:%F{213}       # magenta
#   alias:%F{214}      # orange
#   file:%F{71}        # green
#   path:%F{245}       # grey
#   pattern:%F{71}     # green (strings)
#   argument:%F{50}    # cyan
#   option:%F{80}      # teal
#   comment:%F{241}    # dark grey
#   math:%F{213}       # magenta
#   unknown_token:%F{245}    # grey
# )
