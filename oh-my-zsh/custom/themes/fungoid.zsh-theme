# Fungoid Theme - iTerm2/Zsh theme
# Orange and green dominant brand colors
#
# https://github.com/marzukia/fungoid

# Set theme name
ZSH_THEME_FUNGOID_NAME="fungoid"

# Color definitions
# Background/Foreground
ZSH_THEME_FUNGOID_BG="%K{236}"      # Dark grey bg (rgb 30,30,30)
ZSH_THEME_FUNGOID_FG="%F{254}"      # Warm white

# Brand colors - orange and green dominant
ZSH_THEME_FUNGOID_ORANGE="%F{208}"  # rgb(255, 120, 0) - primary accent
ZSH_THEME_FUNGOID_GREEN="%F{2}"    # rgb(60, 220, 80) - primary accent
ZSH_THEME_FUNGOID_MUTED="%F{241}"   # rgb(105, 85, 65) - secondary
ZSH_THEME_FUNGOID_RED="%F{196}"     # Red - errors
ZSH_THEME_FUNGOID_WHITE="%F{254}"   # White

# Accent colors
ZSH_THEME_FUNGOID_DISCORD="%F{62}"  # rgb(88, 101, 242) - discord blue
ZSH_THEME_FUNGOID_TEAL="%F{37}"     # rgb(0, 210, 150) - worker teal

# Diff colors
ZSH_THEME_FUNGOID_DIFF_ADD="%F{70}%K{22}"     # Green on dark forest green
ZSH_THEME_FUNGOID_DIFF_REMOVE="%F{209}%K{52}" # Light red on dark red

# Code highlighting
ZSH_THEME_FUNGOID_KEYWORD="%F{220}"   # Gold rgb(255, 215, 0)
ZSH_THEME_FUNGOID_STRING="%F{71}"     # Green rgb(80, 200, 100)

# Prompt configuration
ZSH_THEME_FUNGOID_PROMPT_SYMBOL="»"
ZSH_THEME_FUNGOID_PROMPT_SECONDARY="»"

# Prompt elements
ZSH_THEME_FUNGOID_USER_PROMPT="%{$ZSH_THEME_FUNGOID_ORANGE%}%n%{$ZSH_THEME_FUNGOID_FG%}@%m"
ZSH_THEME_FUNGOID_PATH_PROMPT="%{$ZSH_THEME_FUNGOID_MUTED%}%~"
ZSH_THEME_FUNGOID_GIT_PROMPT="%{$ZSH_THEME_FUNGOID_TEAL%}$(git_prompt_info)%{$ZSH_THEME_FUNGOID_FG%}"
ZSH_THEME_FUNGOID_STATUS_PROMPT="%{$ZSH_THEME_FUNGOID_GREEN%}%?%{$ZSH_THEME_FUNGOID_FG%}"

# Left prompt
ZSH_THEME_FUNGOID_PROMPT_LEFT="%{$ZSH_THEME_FUNGOID_ORANGE%}$ZSH_THEME_FUNGOID_PROMPT_SYMBOL%{$ZSH_THEME_FUNGOID_FG%} "

# Right prompt
ZSH_THEME_FUNGOID_PROMPT_RIGHT="%{$ZSH_THEME_FUNGOID_MUTED%}$(git_prompt_status)%{$ZSH_THEME_FUNGOID_GREEN%}%D{%H:%M:%S}%{$ZSH_THEME_FUNGOID_FG%}"

# Prompt setup
function fungoid_prompt_setup() {
  # Enable git prompt
  zstyle ':vcs_info:git:*' formats '%b'
  
  # Set prompt
  precmd_functions+=(fungoid_precmd)
  precmd
}

function fungoid_precmd() {
  RPROMPT="%{$ZSH_THEME_FUNGOID_MUTED%}$(git_prompt_status)%{$ZSH_THEME_FUNGOID_GREEN%}%D{%H:%M:%S}%{$ZSH_THEME_FUNGOID_FG%}"
  PROMPT="%{$ZSH_THEME_FUNGOID_ORANGE%}»%{$ZSH_THEME_FUNGOID_FG%} "
}

# Git prompt info
function git_prompt_info() {
  local ref=$(git symbolic-ref HEAD 2>/dev/null)
  if [[ -n "$ref" ]]; then
    echo "(${ref##refs/heads/})"
  fi
}

# Git prompt status
function git_prompt_status() {
  local status=$(git status --porcelain 2>/dev/null)
  local ret=""
  
  [[ -n $status ]] && ret+="%{$ZSH_THEME_FUNGOID_ORANGE%}✗"
  [[ $(git diff --cached --quiet 2>/dev/null) -eq 1 ]] && ret+="%{$ZSH_THEME_FUNGOID_TEAL%}+"
  
  echo $ret
}

# Load the theme
fungoid_prompt_setup
