# Homebrew tap for CocoaSkills

## Stable channel

```bash
brew tap ivanopcode/csk
brew install cocoaskills
```

## Prerelease channel

The RC formula is separate from the stable formula and is seeded with the latest
published release candidate. Both formulas install `csk`; installing or linking
them side by side is not supported. Uninstall the active channel before
switching.

```bash
brew tap ivanopcode/csk
brew install cocoaskills-rc
```

Switch from stable to RC with:

```bash
brew uninstall cocoaskills
brew install cocoaskills-rc
```

CocoaSkill source: <https://github.com/ivanopcode/cocoaskills>

## Tools

- Homebrew installs, audits, and tests the formulas. Run the RC smoke suite with
  `.github/ci/test-cocoaskills-rc.sh`; it audits the tapped formula, installs it
  from source, runs `brew test`, and verifies that `csk` is executable on
  `PATH`. Command output is written to the terminal or the GitHub Actions job
  log.
- GitHub Actions runs `.github/workflows/ci.yml` for pull requests, pushes to
  `main`, and manual dispatches. Results are available in the repository's
  Actions tab.
