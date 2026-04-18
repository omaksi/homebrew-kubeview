# homebrew-kubeview

Homebrew tap for [KubeView](https://github.com/omaksi/kubeview).

## Install

```sh
brew tap omaksi/kubeview
brew install --cask kubeview --no-quarantine
```

`--no-quarantine` is required because the app is ad-hoc signed rather than
notarized. Without it you'll need to right-click → Open on first launch, or
run `xattr -dr com.apple.quarantine /Applications/KubeView.app`.

The Cask formula is auto-updated by the release workflow in the main repo.
