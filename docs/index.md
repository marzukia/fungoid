# <img src="assets/fungoid.png" alt="fungoid. theme" height="80">

<div align="center">

**a dark terminal & editor theme**  
*orange & green, built for developers*

[![License: MIT](https://img.shields.io/badge/License-MIT-3cdc50.svg)](https://github.com/marzukia/fungoid/blob/main/LICENSE)
[![GitHub Repo](https://img.shields.io/badge/GitHub-repo-ff7800.svg)](https://github.com/marzukia/fungoid)
[![VSCode Marketplace](https://img.shields.io/badge/VSCode-Marketplace-00d296.svg)](https://marketplace.visualstudio.com/items?itemName=marzukia.fungoid-theme)

</div>

---

A dark terminal and editor theme with **orange (#ff7800)** and **green (#3cdc50)** as dominant brand colors. Designed for developers who want a cohesive aesthetic across their entire development environment.

## 📸 Screenshots

<div align="center">

### iTerm2
![iTerm2 Screenshot](../screenshots/iterm2.png)

### VSCode
![VSCode Screenshot](../screenshots/vscode.png)

</div>

---

## ✨ Features

| Feature | Description |
|---------|-------------|
| **Cohesive Design** | Matching themes for iTerm2, Oh My Zsh, and VSCode |
| **Dracula-Inspired Syntax** | Clear, readable syntax highlighting with custom palette |
| **Optimized Performance** | Lightweight theme files with no redundant definitions |
| **Git Integration** | Visual git status indicators in the prompt |
| **Timestamp Display** | Green timestamp for easy command tracking |
| **Exit Code Indicators** | Red indicators for failed commands |
| **Custom Font Support** | Works with any monospace font, optimized for Nerd Fonts |

---

## 🎨 Color Palette

| Role | Color | Hex Code | Usage |
|------|-------|----------|-------|
| **Primary Orange** | <span style="color:#ff7800">■</span> | `#ff7800` | Prompts, keywords, highlights |
| **Primary Green** | <span style="color:#3cdc50">■</span> | `#3cdc50` | Timestamps, success, strings |
| **Pink** | <span style="color:#d966ff">■</span> | `#d966ff` | Types, classes |
| **Cyan** | <span style="color:#00d296">■</span> | `#00d296` | Accents, decorations |
| **Purple** | <span style="color:#a855f7">■</span> | `#a855f7` | Operators |
| **Muted Grey** | <span style="color:#a09080">■</span> | `#a09080` | Comments, punctuation, paths |
| **Yellow** | <span style="color:#ffbe00">■</span> | `#ffbe00` | Secondary highlights |
| **Red** | <span style="color:#ff5a5a">■</span> | `#ff5a5a` | Errors, warnings |
| **Background** | <span style="color:#1e1e1e">■</span> | `#1e1e1e` | Dark background |
| **Foreground** | <span style="color:#e8e6e3">■</span> | `#e8e6e3` | Primary text |

---

## 🚀 Install

### iTerm2

1. Download [Fungoid.itermcolors](https://raw.githubusercontent.com/marzukia/fungoid/main/iterm/Fungoid.itermcolors)
2. Open **iTerm2 Preferences > Profiles > Colors**
3. Click **"Color Presets... > Import..."**
4. Select the downloaded file
5. Apply the theme to your profile

📖 Detailed guide: [INSTALL.md#iterm2](INSTALL.md#iterm2)

### Oh My Zsh

```bash
# Clone the repo
git clone https://github.com/marzukia/fungoid.git ~/.oh-my-zsh/custom/themes/fungoid

# Add to ~/.zshrc
echo 'ZSH_THEME="fungoid"' >> ~/.zshrc

# Reload your shell
exec zsh
```

📖 Detailed guide: [INSTALL.md#oh-my-zsh](INSTALL.md#oh-my-zsh)

### VSCode

1. Download the latest `.vsix` file from [releases](https://github.com/marzukia/fungoid/releases)
2. In VSCode: `Ctrl+Shift+P` > **"Extensions: Install from VSIX"**
3. Select the downloaded `.vsix` file
4. Press `Ctrl+K Ctrl+T` and select **"Fungoid"**

Or install from the [VSCode Marketplace](https://marketplace.visualstudio.com/items?itemName=marzukia.fungoid-theme)

📖 Detailed guide: [vscode/fungoid-vscode-theme/README.md](../vscode/fungoid-vscode-theme/README.md)

---

## 💻 Prompt Features

The Oh My Zsh theme provides:

- <span style="color:#3cdc50">**Timestamp**</span> — Green time display (HH:MM:SS format)
- <span style="color:#ff7800">**User@Host**</span> — Orange username and hostname
- <span style="color:#a09080">**Path**</span> — Muted grey current directory with git branch
- <span style="color:#00d296">**Git Status**</span> — Teal (staged), Orange (modified), Red (untracked)
- <span style="color:#ff5a5a">**Exit Code**</span> — Red indicator on command failure
- **Prompt Glyphs** — Custom arrow glyphs (requires Nerd Font)

---

## 📚 Documentation

- [📥 Installation Guide](INSTALL.md)
- [🎨 Color Palette](COLORS.md)
- [🔧 Color Channels](channels.md)
- [🤝 Contributing](CONTRIBUTING.md)
- [📝 Changelog](CHANGELOG.md)

---

## 🔧 Development

### Structure

```
fungoid/
├── iterm/                    # iTerm2 color scheme
│   └── Fungoid.itermcolors
├── oh-my-zsh/custom/themes/  # Zsh prompt theme
│   └── fungoid.zsh-theme
├── vscode/fungoid-vscode-theme/  # VSCode extension
│   ├── themes/fungoid.json
│   ├── package.json
│   └── README.md
├── docs/                     # Documentation
│   └── channels.md           # Channel setup guides
├── assets/                   # Logos and branding
├── screenshots/              # Theme screenshots
├── CHANGELOG.md              # Version history
├── CONTRIBUTING.md           # Contribution guidelines
├── INSTALL.md                # Detailed installation
└── LICENSE                   # MIT License
```

### Testing

After making changes:

1. **iTerm**: Import the `.itermcolors` file and test with various commands
2. **Zsh**: Copy to `~/.oh-my-zsh/custom/themes/` and test git operations
3. **VSCode**: Run `vsce package` and install with `code --install-extension`

---

## 🔌 Channel Setup

Set up discord, telegram, or nostr integration: [channels.md](channels.md)

---

## 🤝 Contributing

Contributions are welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## 📜 Changelog

See [CHANGELOG.md](CHANGELOG.md) for version history.

---

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.

---

## 🔗 Related Projects

- [Fungoid TUI](https://github.com/marzukia/fungoid) — The underlying terminal application
- [Dracula Theme](https://draculatheme.com) — Inspiration for syntax highlighting philosophy
