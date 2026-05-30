# Homebrew Tap for Proma

This tap installs Proma from the official GitHub releases.

## Install

If this repository is published as `ErlichLiu/homebrew-proma`:

```sh
brew tap ErlichLiu/proma
brew install --cask proma
```

Or install with the fully qualified cask name:

```sh
brew install --cask ErlichLiu/proma/proma
```

## Repository Layout

```text
Casks/
  proma.rb
```

## Updating

When a new Proma release is published:

1. Update `version` in `Casks/proma.rb`.
2. Update the Apple Silicon and Intel `sha256` values from the release assets.
3. Run:

```sh
brew audit --cask --new Casks/proma.rb
brew install --cask --verbose Casks/proma.rb
```

For a GitHub tap, Homebrew expects a repository named with the `homebrew-` prefix. For example, `ErlichLiu/homebrew-proma` is tapped as `ErlichLiu/proma`.
