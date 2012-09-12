# Base16 Vim
See the [Base16 repository](https://github.com/chriskempson/base16) for more information.  
This theme was built with [Base16 Builder](https://github.com/chriskempson/base16-builder).

Supports graphical Vim and console Vim.
For terminal vim (non-gui) please ensure you are using a base16 terminal theme.

![Base16 Vim](https://raw.github.com/chriskempson/base16-vim/master/base16-vim.png)

## Installation
To use the dark theme ensure `set background=dark` is present in your `~/.vimrc` file. Otherwise Vim will use the light variation by default.

Add `colorscheme base16-default` to your `~/.vimrc`.

### Vundle
Add the following to your `~/.vimrc` file.

    Bundle 'chriskempson/base16-vim'

### Manual
    cd ~/.vim/colors
    git clone git://github.com/chriskempson/base16-vim.git base16
    cp base16/colors/*.vim .
    
## Contribution
As these themes are built with [Base16 Builder](https://github.com/chriskempson/base16-builder), no pull requests will be merged directly into this repo.