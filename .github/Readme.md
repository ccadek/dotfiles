# My Dotfiles

This dotfiles repository is administered via the bare git repository pattern. See [Atlassian - Dotfiles: Best way to store in a bare git repository ](https://www.atlassian.com/git/tutorials/dotfiles)

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
- [foot](https://codeberg.org/dnkl/foot)
- neovim
- nerd-fonts
- nvm
- pamixer
- pyenv
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

# Ensure all dependencies are installed
sudo pacman -S avizo bat brightnessctl curl dive eza fish grim neovim nerd-fonts pyenv slurp starship sway

# Change shell to fish to current user
chsh -s $(which fish)
```

You will most likely have issues with pulling. That is ok, with `config status` you can see which files are conflicting and either back them up, or completely remove them. Afterwards run the command again, it should now succeed.

# After first installation

## bat

bat is configured with the [Catppuccin Mocha](https://github.com/catppuccin/bat) theme in `.config/bat`. In order for bat to really use that theme run `bat cache --build`.

## Initializing pre-commit hooks

These dotfiles are using [pre-commit](https://pre-commit.com/) hooks to make sure all dotfiles are consistently formatted. This is a WIP and I will see how far I will take this. As pre-commit usually expects a regular repo we have to trick around a little bit.
The way I initialized my setup was with [tjex.net's guide](https://tjex.net/hacks/neovim-using-pre-commit-and-gitleaks-with-dotfiles/). In case the site goes offline here the quick rundown:

```bash
# First install pre-commit
sudo pacman -S pre-commit

cd ~/.cfg
git worktree add main
cd main
cp ~/.pre-commit-config.yml . # copy existing pre-commit file into cfg/main/.pre-commit-config.yml

# for the next two commands it is important you stay in ~/.cfg/main/
pre-commit autoupdate
pre-commit install
cd ~

# (optional) clean up worktree
cd ~/.cfg
git worktree remove main
```
