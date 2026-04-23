# Contributing to Fungoid

Thanks for your interest! Here's how you can help.

## How to Contribute

### Reporting Bugs

Before creating bug reports, please check the existing issues to avoid duplicates. When creating a bug report, include as much detail as possible:

- **Use a clear and descriptive title**
- **Describe the exact steps to reproduce the problem**
- **Provide specific examples to demonstrate the steps**
- **Describe the behavior you observed after following the steps**
- **Explain which behavior you expected to see instead**
- **Include screenshots if applicable**
- **Specify your environment (OS, terminal version, shell version)**

### Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an enhancement suggestion:

- **Use a clear and descriptive title**
- **Provide a step-by-step description of the suggested enhancement**
- **Provide specific examples to demonstrate the steps**
- **Describe the current behavior and the expected behavior**
- **Explain why this enhancement would be useful**
- **List some other themes or applications where this feature exists**

### Pull Requests

- **Fill in the required template**
- **Do not include issue numbers in the PR title**
- **Include screenshots and animated GIFs of your changes**
- **Follow the existing style and conventions**
- **Document new features in README.md**
- **Test changes across all supported platforms (macOS, Linux)**
- **Write a clear and descriptive PR description**

## Development Workflow

### VSCode Theme Changes

1. Edit `vscode/fungoid-vscode-theme/themes/fungoid.json`
2. Test in VSCode: `code --install-extension path/to/fungoid-theme-1.0.0.vsix`
3. Verify syntax highlighting across multiple file types
4. Run `vsce package` to build the extension
5. Update CHANGELOG.md

### iTerm Theme Changes

1. Edit `iterm/Fungoid.itermcolors`
2. Import into iTerm2 Preferences > Profiles > Colors
3. Test with various commands and git status
4. Update CHANGELOG.md

### Zsh Theme Changes

1. Edit `oh-my-zsh/custom/themes/fungoid.zsh-theme`
2. Copy to `~/.oh-my-zsh/custom/themes/`
3. Set `ZSH_THEME="fungoid"` in `~/.zshrc`
4. Test prompt with various git states and commands
5. Update CHANGELOG.md

## Style Guidelines

### Color Naming

- Use semantic names (e.g., `primaryOrange`, `accentGreen`, `mutedGrey`)
- Keep hex codes consistent across all theme files
- Document new colors in COLORS.md

### Code Style

- Use lowercase for color values in JSON
- Maintain consistent indentation (2 spaces)
- Keep related scopes grouped together
- Avoid duplicate scope definitions

## Questions?

Feel free to open an issue for questions or concerns.
