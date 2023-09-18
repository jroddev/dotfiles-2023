## zsh

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

```
ln -s $(pwd)/alacritty $HOME/.config/
```

## Neovim

```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
ln -s $(pwd)/neovim/ $HOME/.config/nvim/lua/custom
nvim +MasonInstallAll +qall
# other install command
# TSUpdate ?? may not be needed
```
