filetype plugin indent on
syntax on

set number
set hidden
set wildmenu
set ignorecase
set smartcase
set incsearch
set hlsearch
set path+=**
set mouse=a
set nobackup
set noswapfile
set undodir=$HOME/.vim/undodir
set undofile
set clipboard=unnamed
set vb t_vb=

if &term =~ '^xterm\|rxvt'
    let &t_SI .= "\<Esc>[4 q"
    let &t_EI .= "\<Esc>[2 q"
endif
if &term =~ "xterm"
    let &t_SI = "\<Esc>[6 q"
    let &t_SR = "\<Esc>[4 q"
    let &t_EI = "\<Esc>[2 q"
endif

colorscheme default

