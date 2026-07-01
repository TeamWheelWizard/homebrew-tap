# Wheel Wizard Homebrew Tap

Homebrew tap for [Wheel Wizard](https://github.com/TeamWheelWizard/WheelWizard) — a Mario Kart Mod Manager & Retro Rewind Auto Updater.

## Usage

```bash
# Add the tap
brew tap TeamWheelWizard/tap

# Install Wheel Wizard
brew install --cask wheelwizard
```

Or in one line:

```bash
brew install --cask TeamWheelWizard/tap/wheelwizard
```

## Updating

```bash
brew update
brew upgrade --cask wheelwizard
```

## What this tap provides

| Cask | Description |
|------|-------------|
| `wheelwizard` | Wheel Wizard macOS app |

## Architecture support

The cask provides separate downloads for Apple Silicon (`arm64`) and Intel (`x64`) Macs. Homebrew automatically selects the correct variant for your system.

## How it works

This tap contains a [Homebrew Cask](https://docs.brew.sh/Cask-Cookbook) that downloads the official Wheel Wizard `.app` bundle (as a `.zip`) from GitHub Releases. Since Homebrew downloads via `curl` rather than a browser, files installed with `brew install --cask` never get the `com.apple.quarantine` attribute set — sidestepping Gatekeeper issues entirely.

## Repository structure

```
homebrew-tap/
├── Casks/
│   └── wheelwizard.rb    # The cask definition
├── README.md
└── LICENSE
```

## License

GNU General Public License v3.0 — see the [Wheel Wizard repository](https://github.com/TeamWheelWizard/WheelWizard) for details.
