# Fungoid Theme - iTerm2/Zsh theme
# Orange and green dominant brand colors
#
# https://github.com/marzukia/fungoid

# Set theme name
ZSH_THEME_FUNGOID_NAME="fungoid"

# Color definitions - bright, visible colors
# Background/Foreground
# Background/Foreground (matching vscode)
ZSH_THEME_FUNGOID_BG="%K{#1e1e1e}"      # Dark grey bg
ZSH_THEME_FUNGOID_FG="%F{#e8e6e3}"      # Bright white
# Brand colors - orange and green dominant (matching vscode hex values)

ZSH_THEME_FUNGOID_ORANGE="%F{#ff7800}"  # Orange
ZSH_THEME_FUNGOID_GREEN="%F{#3cdc50}"   # Green
ZSH_THEME_FUNGOID_MUTED="%F{#695541}"   # Brown/grey
ZSH_THEME_FUNGOID_RED="%F{#ff5a5a}"     # Red
ZSH_THEME_FUNGOID_YELLOW="%F{#ffbe00}"  # Yellow
ZSH_THEME_FUNGOID_WHITE="%F{#e8e6e3}"   # White
# Accent colors (matching vscode hex values)
ZSH_THEME_FUNGOID_DISCORD="%F{#5865f2}" # Discord blue
ZSH_THEME_FUNGOID_TEAL="%F{#00d296}"    # Teal
ZSH_THEME_FUNGOID_BLUE="%F{#5865f2}"    # Blue
ZSH_THEME_FUNGOID_MAGENTA="%F{#d966ff}" # Magenta
ZSH_THEME_FUNGOID_CYAN="%F{#00d296}"    # Cyan

# Diff colors
ZSH_THEME_FUNGOID_DIFF_ADD="%F{#3cdc50}%K{#1e3a1f}"     # Green on dark forest green
ZSH_THEME_FUNGOID_DIFF_REMOVE="%F{#ff5a5a}%K{#3a0a0a}" # Red on dark red
# Code highlighting (matching vscode)
ZSH_THEME_FUNGOID_KEYWORD="%F{#ff7800}"   # Orange (keywords)
ZSH_THEME_FUNGOID_STRING="%F{#3cdc50}"    # Green (strings)
# Prompt configuration
ZSH_THEME_FUNGOID_PROMPT_SYMBOL="»"
ZSH_THEME_FUNGOID_PROMPT_SECONDARY="»"

# Prompt-elements
ZSH_THEME_FUNGOID_USER_PROMPT="%{$ZSH_THEME_FUNGOID_ORANGE%}%n%{$ZSH_THEME_FUNGOID_FG%}@%{$ZSH_THEME_FUNGOID_BLUE%}%m"
ZSH_THEME_FUNGOID_PATH_PROMPT="%{$ZSH_THEME_FUNGOID_MUTED%}%~"
ZSH_THEME_FUNGOID_GIT_PROMPT="%{$ZSH_THEME_FUNGOID_TEAL%}$(git_prompt_info)%{$ZSH_THEME_FUNGOID_FG%}"
ZSH_THEME_FUNGOID_TIME_PROMPT="%{$ZSH_THEME_FUNGOID_MUTED%}[%D{%H:%M:%S}]"
# Register the theme and enable precmd hook
zstyle ':prompt:fungoid:setup' answer 'yes'

# No vcs_info - using oh-my-zsh git plugin instead

# Actual prompt display
PROMPT="${ZSH_THEME_FUNGOID_USER_PROMPT} ${ZSH_THEME_FUNGOID_PATH_PROMPT} ${ZSH_THEME_FUNGOID_GIT_PROMPT} ${ZSH_THEME_FUNGOID_TIME_PROMPT}
${ZSH_THEME_FUNGOID_PROMPT_SYMBOL} "

RPS1=""

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
