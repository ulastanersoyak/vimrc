set nocompatible              
filetype off                  
set encoding=utf-8           
set fileencoding=utf-8      

" ===================================================================
" vundle setup
" ===================================================================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-python/python-syntax'
Plugin 'shirk/vim-gas'         
Plugin 'jbgutierrez/vim-better-comments'  
Plugin 'kovetskiy/vim-bash'

Plugin 'ycm-core/YouCompleteMe'  
Plugin 'preservim/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'preservim/tagbar'

Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'

Plugin 'kergoth/vim-bitbake'

call vundle#end()             
filetype plugin indent on    

" ===================================================================
" general configuration
" ===================================================================
syntax on                     
set number                    
set relativenumber            
set cursorline               
set wildmenu                
set showmatch              
set incsearch             
set hlsearch             
set ignorecase          
set smartcase          

set guicursor=

colorscheme habamax

set tabstop=4                 
set softtabstop=4             
set shiftwidth=4             
set expandtab               
set autoindent             
set smartindent           
set backspace=indent,eol,start 
set scrolloff=8               
set sidescrolloff=8          
set clipboard=unnamed       

" c/cpp
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

" python
let g:python_highlight_all = 1

" asm
autocmd BufNewFile,BufRead *.s,*.S set filetype=gas

" ===================================================================
" key mappings
" ===================================================================
let mapleader = " "

" nerdtree
nnoremap <leader>n :NERDTreeToggle<CR>

" tagbar 
nnoremap <leader>t :TagbarToggle<CR>

" split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" easy save
nnoremap <leader>w :w<CR>

" easy quit
nnoremap <leader>q :q<CR>

" clear search highlighting
nnoremap <leader>c :nohl<CR>

" ===================================================================
" plugin config
" ===================================================================

" nerdtree
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\.git$', '\.o$', '\.pyc$', '__pycache__']

" CtrlP
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" YouCompleteMe
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

