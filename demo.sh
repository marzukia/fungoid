#!/bin/bash

# Fungoid Theme Demo - Show off the colors and features
echo ""
echo "╔══════════════════════════════════════════════════════════╗"
echo "║           FUNGOID ZSH THEME DEMO                         ║"
echo "╚══════════════════════════════════════════════════════════╝"
echo ""

echo "🎨 Color Palette:"
echo ""
echo -e "\033[1;30m┃ BLACK\033[0m     \033[1;31m┃ RED\033[0m       \033[1;32m┃ GREEN\033[0m     \033[1;33m┃ YELLOW\033[0m   \033[1;34m┃ BLUE\033[0m      \033[1;35m┃ MAGENTA\033[0m  \033[1;36m┃ CYAN\033[0m      \033[1;37m┃ WHITE\033[0m"
echo -e "\033[0;30m┃ black\033[0m    \033[0;31m┃ red\033[0m      \033[0;32m┃ green\033[0m    \033[0;33m┃ yellow\033[0m   \033[0;34m┃ blue\033[0m     \033[0;35m┃ magenta\033[0m   \033[0;36m┃ cyan\033[0m     \033[0;37m┃ white\033[0m"
echo ""

echo "📁 File System:"
echo -e "\033[1;34m📁\033[0m /home/andryo/git/fungoid"
echo -e "  \033[1;32m📄\033[0m README.md"
echo -e "  \033[1;32m📄\033[0m INSTALL.md"
echo -e "  \033[1;32m📄\033[0m COLORS.md"
echo -e "  \033[1;33m📦\033[0m oh-my-zsh/"
echo -e "  \033[1;33m📦\033[0m vscode/"
echo -e "  \033[1;33m📦\033[0m iterm/"
echo ""

echo "🔧 Git Status (simulated):"
echo -e "\033[1;32m✓\033[0m main branch"
echo -e "\033[1;36m●\033[0m 3 commits ahead"
echo -e "\033[1;33m!\033[0m 2 modified files"
echo -e "\033[1;31m✗\033[0m 1 conflict"
echo ""

echo "⚡ Performance Metrics:"
echo -e "  \033[1;32m●\033[0m CPU: 12% | \033[1;34m●\033[0m MEM: 2.4GB | \033[1;33m●\033[0m DISK: 45%"
echo -e "  \033[1;36m●\033[0m UPTIME: 4d 12h 34m"
echo ""

echo "🚀 Quick Commands:"
echo -e "  \033[1;32m$\033[0m ls -la"
echo -e "  \033[1;32m$\033[0m git status"
echo -e "  \033[1;32m$\033[0m cd ~/projects"
echo -e "  \033[1;32m$\033[0m cargo build --release"
echo ""

echo "📊 System Info:"
echo -e "  \033[1;35mOS\033[0m: $(uname -s) $(uname -r)"
echo -e "  \033[1;35mHOST\033[0m: $(hostname)"
echo -e "  \033[1;35mUSER\033[0m: \033[1;36m$USER\033[0m"
echo -e "  \033[1;35mSHELL\033[0m: $SHELL"
echo ""

echo "🎯 Current Directory:"
echo -e "  \033[1;34m📂\033[0m \033[1;36m$(pwd)\033[0m"
echo ""

echo "⏰ Timestamp:"
echo -e "  \033[1;33m$(date '+%Y-%m-%d %H:%M:%S')\033[0m"
echo ""

echo "══════════════════════════════════════════════════════════"
echo "✨ Theme loaded successfully! Check your prompt for colors."
echo "══════════════════════════════════════════════════════════"
echo ""
