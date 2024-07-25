# Purzel's Dotfiles

This dotfiles repository is administered via the bare git repository pattern. See [Atlassian - Dotfiles: Best way to store in a bare git repository ](https://www.atlassian.com/git/tutorials/dotfiles).

# Prerequisites

First ensure you have installed all these packages before cloning the repository

- avizo
- [bat](https://github.com/sharkdp/bat)
- brightnessctl
- curl
- [dive](https://github.com/wagoodman/dive)
- [eza](https://github.com/eza-community/eza)
- [fish](https://github.com/fish-shell/fish-shell)
- grim
- [fisher](https://github.com/jorgebucaran/fisher)
- [foot](https://codeberg.org/dnkl/foot)
- neovim
- nerd-fonts
- nvm
- pamixer
- slurp
- [starship](https://github.com/starship/starship)
- [sway](https://github.com/swaywm/sway)

# Cloning as bare repository

We will clone the the dotfiles repo as a bare repository into `~/.cfg`. This basically means that `.cfg` will act as the `.git` directory, but you will not your home directory will not look like a git repository.

```bash
# Create a .gitignore file in your home directory that ignores .cfg
echo ".cfg" >> .gitignore

# Now we clone the dotfiles repo. Notice the --bare and how we reference the .cfg folder
git clone --bare git@github.com:ccadek/dotfiles.git $HOME/.cfg

# create a temporary alias for config.
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Make sure you only see changes from files that are tracked by the repo
config config --local status.showUntrackedFiles no

# No we can actually pull the repository
config checkout
```

You will most likely have issues with pulling. That is ok, with `config status` you can see which files are conflicting and either back them up, or completely remove them. Afterwards run the command again, it should now succeed.
