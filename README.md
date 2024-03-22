## zsh
- Install [lsd](https://github.com/lsd-rs/lsd) replacement for ls

```
ln -s $(pwd)/zsh/zshrc $HOME/.zshrc
ln -s $(pwd)/zsh/zsh_alias $HOME/.zsh_alias

# Put machine specific zsh in preconfigure
touch $HOME/.zsh_preconfigure

# Set zsh as default shell
# requires session restart to take effect
chsh -s $(which zsh)
```

## tmux

```
ln -s $(pwd)/tmux $HOME/.config/
git clone https://github.com/tmux-plugins/tpm $HOME/.config/tmux/plugins/tpm
$HOME/.config/tmux/plugins/tpm/scripts/install_plugins.sh
```

## alacritty
- Download and Install Terminess Nerd Font from [here](https://www.nerdfonts.com/font-downloads)
- Afterwards adjust font.size in alacritty.yml to suit screen size
```
ln -s $(pwd)/alacritty $HOME/.config/
```

## Neovim

```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
ln -s $(pwd)/neovim/ $HOME/.config/nvim/lua/custom
nvim +MasonInstallAll +qall
```

## Starship Prompt
- Install the [Starship Prompt](https://starship.rs/)
```
ln -s $(pwd)/starship-prompt/starship.toml $HOME/.config/starship.toml

```
