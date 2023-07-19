## zsh

```
ln -s zsh/zshrc $HOME/.zshrc
ln -s zsh/zsh_alias $HOME/.zsh_alias

# Put machine specific zsh in preconfigure
touch $HOME/.zsh_preconfigure

# Set zsh as default shell
# requires session restart to take effect
chsh -s $(which zsh)
```

## tmux

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s tmux $HOME/.config/tmux/
$HOME/.config/tmux/plugins/tpm/scripts/install_plugins.sh
```

## alacritty

```
ln -s alacritty $HOME/.config/alacritty/
```

## Neovim

```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
ln -s neovim $HOME/.config/nvim/lua/custom/
nvim +MasonInstallAll +qall
# other install command
```
