# cd-ls

[![License](https://img.shields.io/badge/license-MIT-007EC7)](/LICENSE)
[![built for](https://img.shields.io/badge/built%20for-%20%F0%9F%A6%93%20zshzoo-black)][zshzoo]
[![works with prezto](https://img.shields.io/badge/works%20with-%E2%9D%AF%E2%9D%AF%E2%9D%AF%20prezto-red)](#install-for-prezto)
[![works with ohmyzsh](https://img.shields.io/badge/works%20with-%20%E2%9E%9C%20oh--my--zsh-C2D33F)](#install-for-oh-my-zsh)

> Automatically `ls` after `cd`, because you know you always do it anyway.
Why not make it automatic?

## Installation

### Install with a Zsh plugin manager

To install using a Zsh plugin manager, add the following to your .zshrc

- [antidote]: `antidote bundle zshzoo/cd-ls`
- [zcomet]: `zcomet load zshzoo/cd-ls`
- [zgenom]: `zgenom load zshzoo/cd-ls`
- [znap]: `znap source zshzoo/cd-ls`

### Install manually, without a plugin manager

To install manually, first clone the repo:

```zsh
git clone https://github.com/zshzoo/cd-ls ${ZDOTDIR:-~}/.zplugins/cd-ls
```

Then, in your .zshrc, add the following line:

```zsh
source ${ZDOTDIR:-~}/.zplugins/cd-ls/cd-ls.zsh
```

### Install for Oh-My-Zsh

To install with [Oh-My-Zsh][ohmyzsh], first clone the repo from an interactive Zsh session:

```zsh
# make sure your $ZSH_CUSTOM is set
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

# now, clone the plugin
git clone https://github.com/zshzoo/cd-ls $ZSH_CUSTOM/plugins/cd-ls
```

Then, add the plugin to your Oh-My-Zsh plugins list in your .zshrc

```zsh
# in your .zshrc, add this plugin to your plugins list
plugins=(... cd-ls)
```

### Install for Prezto

To install with [Prezto][prezto], first clone the repo from an interactive Zsh session:

```zsh
# make sure your $ZPREZTODIR is set
ZPREZTODIR=${ZPREZTODIR:-~/.zprezto}
# clone the repo to a prezto contrib dir
git clone https://github.com/zshzoo/cd-ls $ZPREZTODIR/contrib/cd-ls/external
# set up the contrib
echo "source \${0:A:h}/external/cd-ls.plugin.zsh" > $ZPREZTODIR/contrib/cd-ls/init.zsh
```

Then, add the plugin to your Prezto plugins list in .zpreztorc

```zsh
zstyle ':prezto:load' pmodule \
  ... \
  cd-ls \
  ...
```

[ohmyzsh]: https://github.com/ohmyzsh/ohmyzsh
[prezto]: https://github.com/sorin-ionescu/prezto
[zshzoo]: https://github.com/zshzoo/zshzoo
[antidote]: https://github.com/mattmc3/antidote
[zcomet]: https://github.com/agkozak/zcomet
[zgenom]: https://github.com/jandamm/zgenom
[znap]: https://github.com/marlonrichert/zsh-snap

## Configuration

### `CD_LS_COMMAND`
By setting the `CD_LS_COMMAND` environmental variable, you can customize the command to be executed right after `cd`. The command defaults to the standard `ls` in case the `CD_LS_COMMAND` variable is not set.
