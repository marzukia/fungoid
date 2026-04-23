# Install Fungoid Theme

Complete installation guides for all platforms.

## iTerm2

### Method 1: Direct Download

1. Download the theme file:
```bash
curl -o ~/Downloads/Fungoid.itermcolors https://raw.githubusercontent.com/marzukia/fungoid/main/iterm/Fungoid.itermcolors
```

2. Open iTerm2 Preferences (`Cmd + ,`)
3. Navigate to **Profiles** > **Colors**
4. Click on "Color Presets..." dropdown at the bottom
5. Select **"Import..."**
6. Choose the downloaded `Fungoid.itermcolors` file
7. Select your profile and apply the theme from the presets dropdown

### Method 2: Manual Import

1. Clone or download the repository
2. Open iTerm2 Preferences (`Cmd + ,`)
3. Navigate to **Profiles** > **Colors**
4. Click "Color Presets..." > "Import..."
5. Select `iterm/Fungoid.itermcolors` from the repository
6. Apply to your profile

### Verify Installation

Open a new terminal tab and run:
```bash
echo -e "\033[38;2;255;120;0mOrange Text\033[0m\n\033[38;2;60;220;80mGreen Text\033[0m"
```

You should see orange and green text.

---

## Oh My Zsh

### Method 1: Clone to Custom Themes (Recommended)

1. Clone the repository:
```bash
git clone https://github.com/marzukia/fungoid.git ~/.oh-my-zsh/custom/themes/fungoid
```

2. Edit your `~/.zshrc` file:
```bash
nano ~/.zshrc
```

3. Find the `ZSH_THEME` line and change it to:
```bash
ZSH_THEME="fungoid"
```

4. Save and exit (`Ctrl+X`, then `Y`, then `Enter`)

5. Reload your shell:
```bash
exec zsh
```

### Method 2: Copy Theme File Directly

1. Download the theme file:
```bash
curl -o ~/.oh-my-zsh/custom/themes/fungoid.zsh-theme https://raw.githubusercontent.com/marzukia/fungoid/main/oh-my-zsh/custom/themes/fungoid.zsh-theme
```

2. Edit your `~/.zshrc`:
```bash
ZSH_THEME="fungoid"
```

3. Reload your shell:
```bash
exec zsh
```

### Method 3: Manual Installation

1. Copy the theme file:
```bash
cp oh-my-zsh/custom/themes/fungoid.zsh-theme ~/.oh-my-zsh/custom/themes/
```

2. Edit `~/.zshrc`:
```bash
ZSH_THEME="fungoid"
```

3. Apply:
```bash
source ~/.zshrc
```

### Verify Installation

Your prompt should now show:
- **Green timestamp** (HH:MM:SS)
- **Orange user@host**
- **Muted grey path** with git branch
- **Colored git status** indicators

Test with:
```bash
cd /tmp
git status
ls -la
```

### Troubleshooting

**Prompt looks broken or shows raw codes:**
- Install a Nerd Font: https://www.nerdfonts.com/
- Set your terminal font to the Nerd Font

**Git status not showing:**
- Ensure you're in a git repository
- Check that `plugin=(git)` is in your `~/.zshrc`

**Colors look wrong:**
- Ensure iTerm2 is using the Fungoid color scheme
- Check that your terminal is set to 256-color or true color mode

---

## VSCode

### Method 1: VSIX Installation (Recommended)

1. Download the latest `.vsix` file from the [releases page](https://github.com/marzukia/fungoid/releases)

2. Install via Command Palette:
   - Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac)
   - Type "Extensions: Install from VSIX"
   - Select the downloaded `.vsix` file

3. Activate the theme:
   - Press `Ctrl+K Ctrl+T` (or `Cmd+K Ctrl+T`)
   - Select "Fungoid"

### Method 2: Manual Installation

1. Copy the `fungoid-vscode-theme` folder to your VSCode extensions directory:
   - **Linux**: `~/.vscode/extensions/`
   - **macOS**: `~/.vscode/extensions/`
   - **Windows**: `%USERPROFILE%\.vscode\extensions\`

2. Reload VSCode

3. Activate: `Ctrl+K Ctrl+T` > "Fungoid"

### Method 3: Development Installation

1. Navigate to the theme directory:
```bash
cd vscode/fungoid-vscode-theme
```

2. Install VSCE (VSCode Extension Manager):
```bash
npm install -g @vscode/vsce
```

3. Package the extension:
```bash
vsce package
```

4. Install the generated `.vsix` file:
```bash
code --install-extension fungoid-theme-1.0.0.vsix
```

### Verify Installation

1. Open any code file (JavaScript, Python, Rust, etc.)
2. Check that syntax highlighting matches the theme colors
3. Verify comments are muted grey and strings are green

### Configure as Default

Add to your `settings.json`:
```json
{
  "workbench.colorTheme": "Fungoid"
}
```

---

## Color Scheme Reference

After installation, verify your colors match:

### iTerm2
```bash
# Test all theme colors
echo -e "\033[38;2;255;120;0mOrange\033[0m \033[38;2;60;220;80mGreen\033[0m \033[38;2;217;102;255mPink\033[0m"
echo -e "\033[38;2;0;210;150mCyan\033[0m \033[38;2;168;85;247mPurple\033[0m \033[38;2;255;190;0mYellow\033[0m"
```

### Zsh
```bash
# Test prompt elements
echo $USER@$HOST  # Should be orange
pwd               # Should be muted grey
```

### VSCode
Open a JavaScript file and check:
- Strings → Green
- Keywords → Orange
- Comments → Muted Grey
- Types → Pink
- Operators → Purple

---

## Uninstalling

### iTerm2
1. Open iTerm2 Preferences > Profiles > Colors
2. Change "Color Presets..." to a different theme
3. To remove: delete `Fungoid.itermcolors` from your imports

### Oh My Zsh
1. Edit `~/.zshrc` and change `ZSH_THEME` to another theme (e.g., `robbyrussell`)
2. Remove the theme files:
```bash
rm -rf ~/.oh-my-zsh/custom/themes/fungoid
```

### VSCode
1. `Ctrl+Shift+P` > "Extensions: Show Installed Extensions"
2. Find "Fungoid Theme"
3. Click "Uninstall"
4. Reload VSCode

---

## Next Steps

- Check out the [README.md](README.md) for color palette and features
- See [CONTRIBUTING.md](CONTRIBUTING.md) to help improve the theme
- View [CHANGELOG.md](CHANGELOG.md) for version history
