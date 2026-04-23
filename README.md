# 🍊🌿 Fungoid Theme

A dark terminal theme with orange and green as dominant brand colors.

## Install

### iTerm2

1. Download [Fungoid.itermcolors](https://raw.githubusercontent.com/marzukia/fungoid/main/iterm/Fungoid.itermcolors)
2. Open iTerm2 Preferences > Profiles > Colors
3. Click "Color Presets..." > "Import..."
4. Select the downloaded file
5. Apply the theme to your profile

### Oh My Zsh

1. Clone the repo:
```bash
git clone https://github.com/marzukia/fungoid.git ~/.oh-my-zsh/custom/themes/fungoid
```

2. Add `fungoid` to your `ZSH_THEME` in `~/.zshrc`:
```bash
ZSH_THEME="fungoid"
```

3. Reload your shell:
```bash
exec zsh
```

## Colors

- **Orange** `rgb(255, 120, 0)` - Primary accent, prompt glyph, user@host
- **Green** `rgb(60, 220, 80)` - Primary accent, timestamp, success
- **Muted** `rgb(105, 85, 65)` - Secondary, path, meta
- **Red** - Errors
- **White** - Text
- **Teal** `rgb(0, 210, 150)` - Git status (staged)
- **Discord Blue** `rgb(88, 101, 242)` - Special messages

## License

MIT License
