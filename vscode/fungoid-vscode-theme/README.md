# Fungoid Theme for VSCode

<img src="https://raw.githubusercontent.com/marzukia/fungoid/main/assets/fungoid.png" alt="Fungoid Theme" height="64" align="right">

A dark theme with orange (#ff7800) and green (#3cdc50) as dominant brand colors, matching the Fungoid TUI aesthetic. Inspired by Dracula's syntax highlighting philosophy with custom complementary colors.

## Screenshots

![VSCode Screenshot](../../screenshots/vscode.png)

## Features

- **Primary Colors**: Orange and green as dominant accents
- **Dracula-Inspired Syntax**: Clear distinction between strings, comments, keywords, types, and operators
- **Optimized Performance**: 61% smaller theme file with consolidated scope definitions
- **Color Palette**:
  - Background: `#1e1e1e` (dark grey)
  - Foreground: `#e8e6e3` (warm white)
  - Green: `#3cdc50` (primary accent, strings, success states)
  - Orange: `#ff7800` (primary accent, keywords, highlights)
  - Pink: `#d966ff` (types, classes)
  - Cyan: `#00d296` (accents, decorations)
  - Purple: `#a855f7` (operators)
  - Muted Grey: `#a09080` (comments, punctuation)
  - Yellow: `#ffbe00` (secondary highlights)
  - Red: `#ff5a5a` (errors, warnings)

## Installation

### Method 1: VSIX Extension (Recommended)

1. Download the latest `.vsix` file from the [releases page](https://github.com/marzukia/fungoid/releases)
2. In VSCode, press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac)
3. Type "Extensions: Install from VSIX" and select it
4. Choose the downloaded `.vsix` file
5. Press `Ctrl+K Ctrl+T` and select "Fungoid"

### Method 2: Manual Installation

1. Copy the `fungoid-vscode-theme` folder to your VSCode extensions directory:
   - **Linux**: `~/.vscode/extensions/`
   - **macOS**: `~/.vscode/extensions/`
   - **Windows**: `%USERPROFILE%\.vscode\extensions\`
2. Reload VSCode
3. Press `Ctrl+K Ctrl+T` and select "Fungoid"

### Method 3: Development Installation

```bash
cd vscode/fungoid-vscode-theme
npm install -g @vscode/vsce
vsce package
code --install-extension fungoid-theme-1.0.0.vsix
```

## Usage

After installation, activate the theme:

1. Press `Ctrl+K Ctrl+T` (or `Cmd+K Ctrl+T` on Mac)
2. Select "Fungoid" from the theme picker

Or configure in your `settings.json`:

```json
{
  "workbench.colorTheme": "Fungoid"
}
```

## Customization

You can override specific colors in your VSCode `settings.json`:

```json
{
  "workbench.colorCustomizations": {
    "[Fungoid]": {
      "editor.foreground": "#e8e6e3",
      "editor.background": "#1e1e1e",
      "editorCursor.foreground": "#ff7800"
    }
  }
}
```

## Supported Languages

The theme provides syntax highlighting for all major languages including:
- JavaScript/TypeScript
- Python
- Rust
- Go
- Ruby
- Java
- C/C++
- HTML/CSS
- Markdown
- YAML/JSON

## Development

### Building the Extension

```bash
cd vscode/fungoid-vscode-theme
npm install -g @vscode/vsce
vsce package
```

This generates `fungoid-theme-1.0.0.vsix` in the directory.

### Testing Changes

1. Edit `themes/fungoid.json`
2. Rebuild with `vsce package`
3. Install with `code --install-extension fungoid-theme-1.0.0.vsix`
4. Test across multiple file types

## Contributing

Contributions are welcome! See [CONTRIBUTING.md](https://github.com/marzukia/fungoid/blob/main/CONTRIBUTING.md) for guidelines.

## Changelog

See [CHANGELOG.md](https://github.com/marzukia/fungoid/blob/main/CHANGELOG.md) for version history.

## License

MIT License - see [LICENSE](https://github.com/marzukia/fungoid/blob/main/LICENSE) for details.

## Related

- [Fungoid iTerm2 Theme](https://github.com/marzukia/fungoid/tree/main/iterm)
- [Fungoid Oh My Zsh Theme](https://github.com/marzukia/fungoid/tree/main/oh-my-zsh)
- [Fungoid TUI](https://github.com/marzukia/fungoid)
