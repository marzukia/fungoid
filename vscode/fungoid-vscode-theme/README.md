# Fungoid Theme for VSCode

<img src="https://raw.githubusercontent.com/marzukia/fungoid/main/assets/fungoid.png" alt="Fungoid Theme" height="64" align="right">

A dark theme with orange (#ff7800) and green (#3cdc50) as dominant brand colors, featuring Dracula-inspired syntax highlighting.

## Screenshots

![VSCode Screenshot](../../screenshots/vscode.png)

## Features

- **Primary Colors**: Orange (#ff7800) and green (#3cdc50) as dominant accents
- **Dracula-Inspired Syntax**: Clear distinction between strings, keywords, types, and operators
- **Optimized Performance**: 61% smaller theme file with consolidated scope definitions

## Installation

### Method 1: VSIX Extension (Recommended)

1. Download the latest `.vsix` file from the [releases page](https://github.com/marzukia/fungoid/releases)
2. In VSCode, press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac)
3. Type "Extensions: Install from VSIX" and select it
4. Choose the downloaded `.vsix` file
5. Press `Ctrl+K Ctrl+T` and select "Fungoid"

### Method 2: Marketplace

Install from the [VSCode Marketplace](https://marketplace.visualstudio.com/items?itemName=marzukia.fungoid-theme)

### Method 3: Development Installation

```bash
cd vscode/fungoid-vscode-theme
npm install -g @vscode/vsce
vsce package
code --install-extension fungoid-theme-1.0.0.vsix
```

## Usage

Activate the theme:

1. Press `Ctrl+K Ctrl+T` (or `Cmd+K Ctrl+T` on Mac)
2. Select "Fungoid" from the theme picker

Or in `settings.json`:

```json
{
  "workbench.colorTheme": "Fungoid"
}
```

## Customization

Override colors in your VSCode `settings.json`:

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

## Development

### Building the Extension

```bash
cd vscode/fungoid-vscode-theme
npm install -g @vscode/vsce
vsce package
```

Generates `fungoid-theme-1.0.0.vsix`.

### Testing Changes

1. Edit `themes/fungoid.json`
2. Rebuild with `vsce package`
3. Install with `code --install-extension fungoid-theme-1.0.0.vsix`

## Contributing

See [CONTRIBUTING.md](https://github.com/marzukia/fungoid/blob/main/CONTRIBUTING.md).

## License

MIT License - see [LICENSE](https://github.com/marzukia/fungoid/blob/main/LICENSE).

## Related

- [Fungoid iTerm2 Theme](https://github.com/marzukia/fungoid/tree/main/iterm)
- [Fungoid Oh My Zsh Theme](https://github.com/marzukia/fungoid/tree/main/oh-my-zsh)
