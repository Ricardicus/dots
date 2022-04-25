" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Nerdtree
Plug 'preservim/NERDTree'

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

" backspace as per usual
set backspace=indent,eol,start

" mouse
set mouse=a

function! UseTabs()
	set tabstop=4
	set shiftwidth=4
	set noexpandtab
	set autoindent
endfunction

function! UseSpaces() 
	set tabstop=2
	set shiftwidth=2
	set expandtab
	set softtabstop=0
	set autoindent
	set smarttab
endfunction

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" Rust plug
Plug 'rust-lang/rust.vim'

" Ctags
Plug 'webastien/vim-ctags'

" Taglist
Plug 'yegappan/taglist'

" Cscope
Plug 'simplyzhao/cscope_maps.vim'

" Tagbar
Plug 'preservim/tagbar'

" Initialize plugin system
call plug#end()
