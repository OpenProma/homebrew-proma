
## Install


```sh
brew tap OpenProma/proma
brew install --cask proma
```

Or install with the fully qualified cask name:

```sh
brew install --cask OpenProma/proma
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
