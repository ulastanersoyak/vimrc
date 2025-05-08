# vimrc

minimal vim setup for c/c++, python and general development.

## features

- syntax highlighting for c/c++, python, assembly, bash
- code completion (youcompleteme)
- file navigation (nerdtree, ctrlp)
- git integration
- code structure navigation (tagbar)
- status line (airline)
- smart commenting

## key mappings

- `<space>` - leader key
- `<space>n` - toggle nerdtree
- `<space>t` - toggle tagbar
- `<space>p` - open ctrlp
- `<space>w` - save
- `<space>q` - quit
- `<space>c` - clear search
- `ctrl+h/j/k/l` - split navigation

## setup

1. install vundle:
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

2. copy .vimrc:
```bash
cp .vimrc ~/.vimrc
```

3. install plugins:
```bash
vim +PluginInstall +qall
```

4. compile youcompleteme:
```bash
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
``` 