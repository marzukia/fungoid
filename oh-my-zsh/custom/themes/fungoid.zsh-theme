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
ZSH_THEME_FUNGOID_RED="%F{167}"    # Red matching vscode #ff5a5a
ZSH_THEME_FUNGOID_WHITE="%F{231}"   # White

# Accent colors
ZSH_THEME_FUNGOID_DISCORD="%F{69}"  # Bright blue
ZSH_THEME_FUNGOID_TEAL="%F{80}"     # Bright teal
ZSH_THEME_FUNGOID_YELLOW="%F{226}"  # Bright yellow
ZSH_THEME_FUNGOID_BLUE="%F{75}"     # Bright blue
ZSH_THEME_FUNGOID_MAGENTA="%F{213}" # Bright magenta
ZSH_THEME_FUNGOID_CYAN="%F{50}"     # Bright cyan

# zsh-syntax-highlighting colors - matches fungoid vscode theme
# Add this to ~/.zshrc: ZSH_HIGHLIGHT_STYLES=()
ZSH_HIGHLIGHT_BUILTIN="%F{226}"    # yellow like keywords
ZSH_HIGHLIGHT_COMMAND="%F{83}"     # green like functions
ZSH_HIGHLIGHT_RESERVED="%F{226}"   # yellow
ZSH_HIGHLIGHT_WORD="%F{213}"       # magenta
ZSH_HIGHLIGHT_ALIAS="%F{214}"      # orange
ZSH_HIGHLIGHT_BUILTIN_CMD="%F{226}" # yellow
ZSH_HIGHLIGHT_FILE="%F{71}"        # green
ZSH_HIGHLIGHT_PATH="%F{245}"       # grey
ZSH_HIGHLIGHT_PATTERN="%F{71}"     # green (strings)
ZSH_HIGHLIGHT_ARGUMENT="%F{50}"    # cyan
ZSH_HIGHLIGHT_OPTION="%F{80}"      # teal
ZSH_HIGHLIGHT_COMMENT="%F{241}"    # dark grey
ZSH_HIGHLIGHT_MATH="%F{213}"       # magenta
ZSH_HIGHLIGHT_CURSOR="%F{231}"     # white
ZSH_HIGHLIGHT_UNKNOWN="%F{245}"    # grey

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
# Register the theme and enable precmd hook
zstyle ':prompt:fungoid:setup' answer 'yes'
precmd_functions+=('fungoid_precmd')

# zsh-syntax-highlighting setup instructions:
# 1. Install: git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# 2. In ~/.zshrc: plugins=(... zsh-syntax-highlighting)
# 3. Add to ~/.zshrc after sourcing oh-my-zsh:
#    source /path/to/fungoid.zsh-theme
#    ZSH_HIGHLIGHT_STYLES=(
#      builtin:$ZSH_HIGHLIGHT_BUILTIN
#      command:$ZSH_HIGHLIGHT_COMMAND
#      reserved_word:$ZSH_HIGHLIGHT_RESERVED
#      word:$ZSH_HIGHLIGHT_WORD
#      alias:$ZSH_HIGHLIGHT_ALIAS
#      file:$ZSH_HIGHLIGHT_FILE
#      path:$ZSH_HIGHLIGHT_PATH
#      pattern:$ZSH_HIGHLIGHT_PATTERN
#      argument:$ZSH_HIGHLIGHT_ARGUMENT
#      option:$ZSH_HIGHLIGHT_OPTION
#      comment:$ZSH_HIGHLIGHT_COMMENT
#      math:$ZSH_HIGHLIGHT_MATH
#      unknown_token:$ZSH_HIGHLIGHT_UNKNOWN
#    )

