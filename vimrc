set nocompatible        " disregard vi compatibility
execute pathogen#infect()

" ----------------------------------------------------------------------
" file:        ~/.vimrc
" author:    Thayer Williams - http://cinderwick.ca
" modified: June 21, 2008
" modified: June 11, 2024
" ----------------------------------------------------------------------

" general --------------------------------------------------------------

set t_Co=256              " enable 256-color support
set encoding=utf-8        " UTF-8 encoding for all new files
set fileencoding=utf-8    " force filetype encoding for existing files
set fileencodings=ucs-bom,utf-8,gb18030,utf16-le,big5,euc-jp,euc-kr,latin1
set mouse=a               " allow mouse input in all modes
set ttymouse=xterm2       " enable scrolling within screen sessions (MUST HAVE)
set backspace=2           " full backspacing capabilities (indent,eol,start)
set history=100           " 100 lines of command line history
set number                " show line numbers
set numberwidth=3         " minimum num of cols to reserve for line numbers
set nobackup              " disable backup files (filename~)
set showmatch             " show matching brackets (),{},[]
set ww=h,l,<,>,[,]        " whichwrap -- left/right keys can traverse up/down
set nowrap                " wrap long lines to fit terminal width
set ttyfast               " tell vim we're using a fast terminal for redraws
set autoread              " reload file if vim detects it changed elsewhere
set wildmenu              " enhanced tab-completion shows all matching cmds
set splitbelow            " place the new split below the current file
set autowrite             " write file if modified on each :next, :make, etc.
set writebackup           " make a backup before writing a file until successful
set previewheight=5       " default height for a preview window (def:12)


" color ----------------------------------------------------------------
syntax on                 " enable syntax highlighting
colorscheme desert        " define syntax color scheme
hi LineNr ctermfg=darkgray guifg=gray
hi Pmenu ctermfg=white ctermbg=darkgray guifg=white guibg=darkgray
hi PmenuSel ctermfg=white ctermbg=magenta guifg=white guibg=magenta
hi DiffText ctermbg=green


" highlight extra whitespace and tabs ----------------------------------

hi RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t/


" statusline -----------------------------------------------------------

set cmdheight=2           " command line height
set laststatus=2          " condition to show status line, 2=always.
set ruler                 " show cursor position in status line
set showmode              " show mode in status line
set showcmd               " show partial commands in status line
set statusline=%([%{&fenc}%)%(:%{&ff}]%)%(:%y%)\ %r%h%w\ %#Error#%m%#Statusline#\ %F\ %=buff[%1.3n]\ %1.7l/%L,%1.7c%V\ [%P]


" tabs and indenting ---------------------------------------------------

set expandtab             " insert spaces instead of tabs
set tabstop=4             " n space tab width
set shiftwidth=4          " allows the use of < and > for VISUAL indenting
set softtabstop=4         " counts n spaces when DELETE or BCKSPCE is used
set smarttab              " set <Tab>s according to shiftwidth
set autoindent            " auto indents next new line
set smartindent           " intelligent indenting -- DEPRECATED by cindent
" set cindent               " C style indenting off
" set cinoptions=:0,p0,t0   " recommended defaults from O'Reilly
" set cinwords=if,else,while,do,for,switch,case " recommended defaults from O'Reilly
" set formatoptions=tcqr    " recommended defaults from O'Reilly


" searching ------------------------------------------------------------

set hlsearch              " highlight all search results
set incsearch             " increment search
set ignorecase            " case-insensitive search
set smartcase             " uppercase causes case-sensitive search
set nowrapscan            " searches wrap back to the top of file


" hotkeys --------------------------------------------------------------

" enter ex mode with a semi-colon too
nnoremap ; :
vnoremap ; :

" F2 selects all
nnoremap <F2> ggVG

" F3 toggles wordwrap
nnoremap <F3> :set invwrap wrap?<cr>

" F5 toggles paste mode
set pastetoggle=<F5>

" strip ^M linebreaks from dos formatted files
map M :%s/\r$//g


" NerdTree -------------------------------------------------------------

map <leader>n :NERDTreeToggle<CR>

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

