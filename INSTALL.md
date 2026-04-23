# Install Fungoid Theme

## iTerm2

1. Download the theme file:
```bash
curl -o ~/Downloads/Fungoid.itermcolors https://raw.githubusercontent.com/marzukia/fungoid/main/iterm/Fungoid.itermcolors
```

2. Open iTerm2 Preferences (Cmd + ,)
3. Navigate to Profiles > Colors
4. Click on "Color Presets..." dropdown at the bottom
5. Select "Import..."
6. Choose the downloaded Fungoid.itermcolors file
7. Select your profile and apply the theme from the presets dropdown

## Oh My Zsh

### Method 1: Clone to custom themes

```bash
git clone https://github.com/marzukia/fungoid.git ~/.oh-my-zsh/custom/themes/fungoid
```

Then edit `~/.zshrc`:
```bash
ZSH_THEME="fungoid"
```

### Method 2: Copy theme file directly

```bash
curl -o ~/.oh-my-zsh/custom/themes/fungoid.zsh-theme https://raw.githubusercontent.com/marzukia/fungoid/main/oh-my-zsh/custom/themes/fungoid.zsh-theme
```

Then edit `~/.zshrc`:
```bash
ZSH_THEME="fungoid"
```

### Apply the theme

Reload your shell:
```bash
exec zsh
```

Or restart your terminal.
