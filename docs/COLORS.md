# Fungoid Color Palette

Complete reference of all colors used in the Fungoid theme across all platforms.

## Primary Colors

| Name | Hex | RGB | Usage |
|------|-----|-----|-------|
| Primary Orange | `#ff7800` | `rgb(255, 120, 0)` | Prompts, keywords, highlights, user@host |
| Primary Green | `#3cdc50` | `rgb(60, 220, 80)` | Timestamps, success states, strings |

## Secondary Colors

| Name | Hex | RGB | Usage |
|------|-----|-----|-------|
| Pink | `#d966ff` | `rgb(217, 102, 255)` | Types, classes, function names |
| Cyan | `#00d296` | `rgb(0, 210, 150)` | Accents, decorations, git staged |
| Purple | `#a855f7` | `rgb(168, 85, 247)` | Operators, special syntax |
| Muted Grey | `#a09080` | `rgb(160, 144, 128)` | Comments, punctuation, paths, meta |
| Yellow | `#ffbe00` | `rgb(255, 190, 0)` | Secondary highlights, warnings |
| Red | `#ff5a5a` | `rgb(255, 90, 90)` | Errors, warnings, exit codes, git untracked |

## Base Colors

| Name | Hex | RGB | Usage |
|------|-----|-----|-------|
| Background | `#1e1e1e` | `rgb(30, 30, 30)` | Editor/terminal background |
| Foreground | `#e8e6e3` | `rgb(232, 230, 227)` | Primary text, default foreground |

## Git Status Colors (Zsh)

| State | Color | Hex |
|-------|-------|-----|
| Staged | Cyan | `#00d296` |
| Modified | Orange | `#ff7800` |
| Untracked | Red | `#ff5a5a` |
| Branch | Muted Grey | `#a09080` |

## Consistency Across Platforms

All three theme variants (iTerm, Zsh, VSCode) use the same hex values to ensure visual consistency:

- **iTerm2**: `iterm/Fungoid.itermcolors`
- **Oh My Zsh**: `oh-my-zsh/custom/themes/fungoid.zsh-theme`
- **VSCode**: `vscode/fungoid-vscode-theme/themes/fungoid.json`

## Color Selection Rationale

### Orange (#ff7800)
- High visibility against dark background
- Warm, energetic feel
- Distinct from other common terminal colors
- Used for: Primary prompts, keywords, attention-grabbing elements

### Green (#3cdc50)
- Natural association with success/safety
- Bright enough to stand out
- Used for: Timestamps, success messages, string literals

### Pink (#d966ff)
- Complementary to green (Dracula-inspired)
- Good for type differentiation
- Used for: Types, classes, constructors

### Cyan (#00d296)
- Cool balance to warm orange
- Git staged indicator
- Used for: Accents, decorations

### Purple (#a855f7)
- Operator differentiation
- Adds visual variety
- Used for: Operators, special syntax

### Muted Grey (#a09080)
- Reduced eye strain for non-critical text
- Better than pure grey for long sessions
- Used for: Comments, paths, metadata

## Testing Colors

### Terminal Test
```bash
echo -e "\033[38;2;255;120;0mOrange\033[0m"
echo -e "\033[38;2;60;220;80mGreen\033[0m"
echo -e "\033[38;2;217;102;255mPink\033[0m"
echo -e "\033[38;2;0;210;150mCyan\033[0m"
echo -e "\033[38;2;168;85;247mPurple\033[0m"
echo -e "\033[38;2;255;190;0mYellow\033[0m"
echo -e "\033[38;2;255;90;90mRed\033[0m"
echo -e "\033[38;2;160;144;128mMuted Grey\033[0m"
```

### VSCode Test
Open any code file and verify:
- String literals → Green
- Keywords (if, else, return) → Orange
- Comments → Muted Grey
- Types/Classes → Pink
- Operators (+, -, =) → Purple

## Accessibility

- All foreground colors pass WCAG AA contrast ratio against `#1e1e1e` background
- Orange and green provide distinct color-blind friendly differentiation
- Muted grey reduces eye strain during extended coding sessions

## Contributing New Colors

If you want to suggest color adjustments:
1. Open an issue with your proposal
2. Include before/after screenshots
3. Explain the use case
4. Provide hex/RGB values

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.
