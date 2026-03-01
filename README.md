# ZenML Homebrew Tap

Homebrew formulae and casks for ZenML tools.

## Install

```bash
brew tap zenml-io/tap
brew install --cask zenml-menubar
```

Or in one command:

```bash
brew install --cask zenml-io/tap/zenml-menubar
```

## Available Casks

| Cask | Description |
|------|-------------|
| `zenml-menubar` | macOS menu bar app for monitoring ZenML pipeline runs |

## First Launch

This app is not yet notarized with Apple. After installing, remove the quarantine flag:

```bash
xattr -dr com.apple.quarantine "/Applications/ZenML Menu Bar.app"
```

Then open the app normally. This only needs to be done once.

## Updating

```bash
brew update
brew upgrade --cask zenml-menubar
```
