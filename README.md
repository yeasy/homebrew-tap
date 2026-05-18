# Homebrew Tap

This is a [Homebrew](https://brew.sh/) tap for tools by [@yeasy](https://github.com/yeasy).

## Setup

```bash
brew tap yeasy/tap
```

## Available Packages

### CLIs

| Package | Type | Description | Install |
|---------|------|-------------|---------|
| [mdpress](https://github.com/yeasy/mdpress) | Cask | Publish Markdown as site, PDF, HTML, ePub | `brew install --cask yeasy/tap/mdpress` |
| [ask](https://github.com/yeasy/ask) | Formula | Agent Skills Kit — package manager for AI agent skills | `brew install yeasy/tap/ask` |
| [autoppt](https://github.com/yeasy/autoppt) | Formula | Generate professional presentations using AI | `brew install yeasy/tap/autoppt` |

### Desktop Apps (macOS)

| Package | Type | Description | Install |
|---------|------|-------------|---------|
| [ask-desktop](https://github.com/yeasy/ask) | Cask | ASK Desktop App — visual skill manager | `brew install --cask yeasy/tap/ask-desktop` |

## Update

```bash
brew update
brew upgrade <package>           # formulae
brew upgrade --cask <package>    # casks
```

## Uninstall

```bash
brew uninstall <package>         # formulae
brew uninstall --cask <package>  # casks
brew untap yeasy/tap
```
