vim-modelica
============

Snippet, detection and other goodies to edit modelica (.mo) files

## Installation Vundle or vim-plug

### Installation Vundle
Install [Vundle](https://github.com/gmarik/Vundle.vim) if not already installed.

Then add
```vim
Plugin 'drmingdrmer/xptemplate'
Plugin 'Li-Wenhui/vim-modelica'
```
to the `.vimrc` . And type `:PluginInstall` in the ex command line of the vim.

### Installation vim-plug 
Install [vim-plug](https://github.com/junegunn/vim-plug) if not already installed.

Then add
```vim
Plug 'drmingdrmer/xptemplate'
Plug 'Li-Wenhui/vim-modelica'
```
to the `.vimrc` . And type `:PluginInstall` in the ex command line of the vim.

## Usage
You can type the following shorthands with `shorthand<ctrl+\>`. 

For example `block<ctrl+\>` yields:
```
block `blockName^
    `cursor^
end `blockName^;
```
You may use `<tab>` to navigate through the elements (`blockName`, `cursor`).

Available shorthands include:
* `model`
* `class`
* `connector`
* `record`
* `typer`
* `while`
* `if`
* `block`
* `package`
* `forin`
* `enum`
* `function`

## About
Requires [drmingdrmer/xptemplate](https://github.com/drmingdrmer/xptemplate) to work.
