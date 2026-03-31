<h1 align="center">
  ☁️ + 🚀
  <br>Scaleway CLI Spaceship Section<br>
</h1>

<h4 align="center">
  A <a href="https://github.com/scaleway/scaleway-cli" target="_blank">Scaleway CLI (scw)</a> section for Spaceship prompt
</h4>

<p align="center">
  <a href="https://github.com/fouadchamoun/spaceship-scw/releases">
    <img src="https://img.shields.io/github/v/release/fouadchamoun/spaceship-scw?style=flat-square"
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
