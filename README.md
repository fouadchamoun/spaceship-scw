<h1 align="center">
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="30" height="30"><!--!Font Awesome Free v7.2.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2026 Fonticons, Inc.--><path fill="rgb(177, 151, 252)" d="M243.4 117.3l-84.3 0c-18.5 2.1-32.7 17.5-33.4 36l0 121.9c0 8.2 3.2 15.3 8.5 20.7s12.5 8.6 20.6 8.6c16 0 29.2-13.2 29.2-29.2l0-77.4c0-12.1 10-22.1 22.1-22.1l38.1 0c8.2 0 15.3-3.2 20.6-8.6s8.5-12.8 8.5-21c0-16-13.9-28.9-29.9-28.9zM205.3 395.4l84.3 0c18.5-2.1 32.7-17.5 33.4-36l0-121.9c0-8.2-3.2-15.3-8.5-20.7s-12.5-8.6-20.6-8.6c-16 0-29.2 13.2-29.2 29.2l0 77.4c0 12.1-10 22.1-22.1 22.1l-38.1 0c-8.2 0-15.3 3.2-20.6 8.6s-8.5 12.8-8.5 21c.4 16 13.9 28.9 29.9 28.9zM104.3 0L257.6 0c101 0 182.5 81.6 182.1 182.9l0 242.8c-4.6 46-42 82.4-88.2 86.3L190 512C89.3 512 7.5 430 7.5 329.1L7.5 97c0-53.5 43.4-97 96.8-97zM381.7 182.9c0-68.5-55.9-124.4-124.2-124.4l-153 0C83.3 58.5 66.2 75.6 66.2 97l0 232.1c0 68.8 55.5 124.4 124.2 124.4l158.7 0c16.7-2.1 29.9-15 32.7-31.4l0-239.2z"/></svg>
  + 🚀
  <br>Scaleway CLI Spaceship Section<br>
</h1>

<h4 align="center">
  A <a href="https://github.com/scaleway/scaleway-cli" target="_blank">Scaleway CLI (scw)</a> section for Spaceship prompt
</h4>

<p align="center">
  <a href="https://github.com/fouadchamoun/spaceship-scw/releases">
    <img src="https://img.shields.io/github/v/release/fouadchamoun/spaceship-scw.svg?style=flat-square"
      alt="GitHub Release" />
  </a>

  <a href="https://github.com/fouadchamoun/spaceship-scw/actions">
    <img src="https://img.shields.io/github/actions/workflow/status/fouadchamoun/spaceship-scw/ci.yaml?style=flat-square"
      alt="GitHub Workflow Status" />
  </a>

  <a href="https://twitter.com/SpaceshipPrompt">
    <img src="https://img.shields.io/badge/twitter-%40SpaceshipPrompt-00ACEE.svg?style=flat-square"
      alt="Spaceship Twitter" />
  </a>

</p>

Current Scaleway CLI profile, through [scaleway-cli](https://github.com/scaleway/scaleway-cli) (`scw`).

## Installing

You need to source this plugin somewhere in your dotfiles. Here's how to do it with some popular tools:

### [Oh-My-Zsh]

Execute this command to clone this repo into Oh-My-Zsh plugin's folder:

```zsh
git clone https://github.com/fouadchamoun/spaceship-scw.git $ZSH_CUSTOM/plugins/spaceship-scw
```

Include `spaceship-scw` in Oh-My-Zsh plugins list:

```zsh
plugins=($plugins spaceship-scw)
```

### [zplug]

```zsh
zplug "fouadchamoun/spaceship-scw"
```

### [antigen]

```zsh
antigen bundle "fouadchamoun/spaceship-scw"
```

### [antibody]

```zsh
antibody bundle "fouadchamoun/spaceship-scw"
```

### [zinit]

```zsh
zinit light "fouadchamoun/spaceship-scw"
```

### [zgen]

```zsh
zgen load "fouadchamoun/spaceship-scw"
```

### [sheldon]

```toml
[plugins.spaceship-scw]
github = "fouadchamoun/spaceship-scw"
```

### Manual

If none of the above methods works for you, you can install Spaceship manually.

1. Clone this repo somewhere, for example to `$HOME/.zsh/spaceship-scw`.
2. Source this section in your `~/.zshrc`.

### Example

```zsh
mkdir -p "$HOME/.zsh"
git clone --depth=1 https://github.com/fouadchamoun/spaceship-scw.git "$HOME/.zsh/spaceship-scw"
```

For initializing prompt system add this to your `.zshrc`:

```zsh title=".zshrc"
source "~/.zsh/spaceship-scw/spaceship-scw.plugin.zsh"
```

## Usage

After installing, add the following line to your `.zshrc` in order to include the section in the prompt:

```zsh
spaceship add scw
```

## Options

This section is shown only when the Scaleway CLI is configured.

| Variable               |              Default               | Meaning                              |
| :--------------------- | :--------------------------------: | ------------------------------------ |
| `SPACESHIP_SCW_SHOW`   |               `true`               | Show current section                 |
| `SPACESHIP_SCW_PREFIX` | `$SPACESHIP_PROMPT_DEFAULT_PREFIX` | Prefix before section                |
| `SPACESHIP_SCW_SUFFIX` | `$SPACESHIP_PROMPT_DEFAULT_SUFFIX` | Suffix after section                 |
| `SPACESHIP_SCW_SYMBOL` |              `☁️·`                 | Character to be shown before profile |
| `SPACESHIP_SCW_COLOR`  |            `magenta`               | Color of section                     |

## Contributing

First, thanks for your interest in contributing!

Contribute to this repo by submitting a pull request. Please use [conventional commits](https://www.conventionalcommits.org/), since this project adheres to [semver](https://semver.org/) and is automatically released via [semantic-release](https://github.com/semantic-release/semantic-release).

## License

MIT © [Fouad Chamoun](https://fouad.dev)

<!-- References -->

[Oh-My-Zsh]: https://ohmyz.sh/
[zplug]: https://github.com/zplug/zplug
[antigen]: https://antigen.sharats.me/
[antibody]: https://getantibody.github.io/
[zinit]: https://github.com/zdharma/zinit
[zgen]: https://github.com/tarjoilija/zgen
[sheldon]: https://sheldon.cli.rs/
