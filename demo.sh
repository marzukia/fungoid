#!/bin/bash

# Fungoid Theme Demo - Quick showcase
echo ""
echo "╔════════════════════════════════════════════╗"
echo "║        FUNGOID ZSH THEME DEMO              ║"
echo "╚════════════════════════════════════════════╝"
echo ""

# Color palette
echo -e "\033[1;37mColors:\033[0m "
echo -e "  \033[1;31m● red\033[0m  \033[1;32m● green\033[0m  \033[1;33m● yellow\033[0m  \033[1;34m● blue\033[0m  \033[1;35m● magenta\033[0m  \033[1;36m● cyan\033[0m"
echo ""

# Python code snippet
echo -e "\033[1;37mPython demo:\033[0m"
echo -e "\033[0;36mclass\033[0m \033[0;33mFungoid\033[0m:"
echo -e "    \033[0;36mdef\033[0m \033[0;32m__init__\033[0m(\033[0;36mself\033[0m):"
echo -e "        \033[0;36mself\033[0m.\033[0;34mcolors\033[0m = [\033[0;32m'🔴'\033[0m, \033[0;32m'🟢'\033[0m, \033[0;32m'🟡'\033[0m, \033[0;32m'🔵'\033[0m]"
echo -e "        \033[0;36mself\033[0m.\033[0;34mtheme\033[0m = \033[0;32m'fungoid'\033[0m"
echo ""

# System info
echo -e "\033[1;37mSystem:\033[0m \033[1;36m$USER\033[0m@\033[1;34m$(hostname)\033[0m"
echo -e "\033[1;37mDir:\033[0m \033[1;33m$(pwd)\033[0m"
echo -e "\033[1;37mTime:\033[0m \033[1;32m$(date '+%H:%M:%S')\033[0m"
echo ""
echo -e "\033[1;37mGit:\033[0m \033[1;35m$(git branch --show-current 2>/dev/null || echo 'no branch')\033[0m"
echo ""
echo "════════════════════════════════════════════"
echo "✨ Run 'source ~/.zshrc' to see the prompt!"
echo "════════════════════════════════════════════"
echo ""
