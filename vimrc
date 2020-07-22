" Generic VIM configuration
set nocompatible            " Enable extended feature
filetype off                " As required by Vundle

" Auto-install Vundle
let vundle_fresh_installation=0
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let vundle_fresh_installation = 1
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" To install/update bundles use
"   :PluginInstall!
" or
"   vim +PluginInstall +qall

" Vundle plugin manager
Plugin 'gmarik/vundle'

" Zenburn color scheme
Plugin 'jnurmine/Zenburn'

" AnsiEsc: show ANSI escape sequences as color text
" Use ":AnsiEsc" to activate on a buffer
Plugin 'powerman/vim-plugin-AnsiEsc'

call vundle#end()

" Auto-install bundles
if vundle_fresh_installation == 1
    echo "Installing bundles..."
    echo ""
    :PluginInstall!
endif

"
" Generic VIM configuration
"

filetype plugin indent on   " Re-enable file typing
set laststatus=2            " Always display status line
set encoding=utf-8          " Force UTF-8 encoding
set noswapfile              " Disable creation of .swp files

set expandtab               " Replace TABs with spaces
set tabstop=4 shiftwidth=4  " Use 4 space for TAB

set autoindent              " Use indentation of the previous line
set smartindent             " Auto-indent for C-like files

nnoremap Q <nop>            " Disable Ex mode
syntax on                   " Enable syntax highlighting

" Map // to search for selected text. See [1] for details.
" [1] http://vim.wikia.com/wiki/Search_for_visually_selected_text
vnoremap // y/<C-R>"<CR>

"
" Plugins configurations
"

" Configure Zenburn color scheme
set term=screen-256color
set t_Co=256                " Enable 256 colors mode
let g:zenburn_high_Contrast=1
let g:zenburn_alternative_Visual=1
colors zenburn

set nowrap                  " Disable line wrapping

set incsearch               " Use incremental search
set ignorecase              " Use case insensitive search
set smartcase               " Revert to case sensitive search
                            "  if pattern has upper case letter
set hlsearch                " Highlight search results

" Show invisible characters. Use :set list to enable
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" Make sure backspace works
set backspace=indent,eol,start

" Handle tmux TERM quirks in vim
if $TERM =~ '^screen-256color'
    set t_Co=256
    map  <Esc>OH <Home>
    imap <Esc>OH <Home>
    map  <Esc>OF <End>
    imap <Esc>OF <End>
endif

" Tweak selection background color
hi Visual term=reverse ctermbg=87 ctermfg=Black

