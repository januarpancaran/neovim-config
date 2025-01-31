# Neovim Config

My personal neovim config

## Installation

Make sure you have a neovim directory first

```bash
mkdir -p "$HOME/.config/nvim" # Or at "XDG_CONFIG_HOME/nvim" if you have set it
```

Then,

```bash
git clone --depth 1 https://github.com/januarpancaran/neovim-config.git
cd neovim-config
cp -r {init.lua,lua} "$HOME/.config/nvim" # Or at "$XDG_CONFIG_HOME/nvim"
```
