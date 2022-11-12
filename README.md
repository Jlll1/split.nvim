# split.nvim
Small Neovim plugin allowing for splitting a line on a sequence of characters.

![split2](https://user-images.githubusercontent.com/71319302/201474719-84368a7f-fa18-4353-bd76-adec1b87c23a.gif)

## Installation
Using [vim-plug](https://github.com/junegunn/vim-plug):
```vim
Plug 'jinh0/eyeliner.nvim'
```

Using [packer.nvim](https://github.com/wbthomason/packer.nvim):
```lua
use 'jinh0/eyeliner.nvim'
```

Using Neovim's native package system (`:h packages`)
```bash
cd ~/.config/nvim/pack/<any-name>/start
git clone https://github.com/Jlll1/split.nvim
// or use submodules
git submodule add https://github.com/Jlll1/split.nvim
```

## Usage

`split.nvim` exposes 3 commands:
* `:SplitOn <string>` - which replaces <string> occurences with `\r`
* `:SplitBefore <string>` - which inserts `\r` before <string> occurences
* `:SplitBefore <string>` - which inserts `\r` after <string> occurences

Each of them will cleanup any trailing or leading whitespaces created during the split.

### Adding a shortcut
In your `init.lua`
```lua
vim.keymap.set('n', 'gss', ':<c-u>SplitOn<space>', { noremap = true })
```

## Contributing
While `split.nvim` is a very basic plugin, any issues, PR's or feature requests are more than welcome.
