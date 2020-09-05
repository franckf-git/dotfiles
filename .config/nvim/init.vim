"""""""""""""""""""""""""""
" GENERALS
"""""""""""""""""""""""""""

" Sets how many lines of history
set history=500

" Enable syntax highlighting
syntax enable

" Charaters coding
set encoding=utf8
set fileencoding=utf8

" Use Vim defaults
set nocompatible
set scrolloff=15

" Dialogue asking if you wish to save
set confirm

" Transform ; to : for mistakes and SPACE to : for your health
map ; :
map <Space> :

" Easier change mode (or ^c)
imap jj <Esc>
nmap <Space><Space> i

" Escape terminal (or ^z - fg)
tmap <Esc> <C-\><C-n>

" No swap file
set noswapfile

" Folds
set nofoldenable
set foldmethod=indent

"""""""""""""""""""""""""""
" INTERFACE
"""""""""""""""""""""""""""

" Show relative lines number
set number
set relativenumber

" Colorscheme
colors dracula

" Always show status bar
set laststatus=2
set statusline=                                                "clear the statusline
set statusline+=%<\                                            "cut at start
set statusline+=\ %m                                           "modified flag
set statusline+=\ @>%F                                         "full path name
set statusline+=\ %h                                           "help file flag
set statusline+=\ %r                                           "read only flag
set statusline+=\ %w                                           "windows flag
set statusline+=%=                                             "right separator
set statusline+=\ %p%%                                         "percentage of document
set statusline+=\ LIN>%l/%L                                    "cursor line/total lines
set statusline+=\ COL>%c                                       "cursor column
set statusline+=\ ENC>%{&fileencoding?&fileencoding:&encoding} "fileencoding
set statusline+=\[%{&fileformat}\]
set statusline+=\ TYP>%y                                       "filetype
set statusline+=\ %{strftime(\"%H:%M\")}                       "time
set statusline+=\                                              "end space

" Always show current position
set ruler

" Always wrap long lines
set wrap

" Enable mouse cursor
set mouse=a

" Show current line in LineNbr bar
set cursorline

"""""""""""""""""""""""""""
" EXPLORER
"""""""""""""""""""""""""""

" Tree view in netrw explorer
let g:netrw_liststyle = 3

" Width of the directory explorer
let g:netrw_winsize = 20

" Search down into subfolders
set path+=**

" Display all matching files when we tab complete
set wildmenu

"""""""""""""""""""""""""""
" SPLITS
"""""""""""""""""""""""""""

set splitbelow
set splitright

"""""""""""""""""""""""""""
" INDENTATION
"""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Auto indent
set autoindent
set smartindent

" Allow backspacing in insert mode
set backspace=indent,eol,start

"""""""""""""""""""""""""""
" SEARCHING
"""""""""""""""""""""""""""

" Highlight search results
set hlsearch

" Incremental search
set incsearch

" Ignore case when searching
set ignorecase

"""""""""""""""""""""""""""
" CODING HELPS
"""""""""""""""""""""""""""

" Show invisible characters with :set list
set nolist
set listchars+=space:՟
set listchars+=trail:՞
set listchars+=tab:⁗⁗

" Highlight match parentheses
set showmatch
set matchtime=3

" Close the open parentheses
inoremap ( ()<Esc>:let leavechar=")"<CR>i
inoremap [ []<Esc>:let leavechar="]"<CR>i
inoremap { {}<Esc>:let leavechar="}"<CR>i
inoremap < <><Esc>:let leavechar=">"<CR>i
inoremap " ""<Esc>:let leavechar='"'<CR>i
inoremap ' ''<Esc>:let leavechar="'"<CR>i
inoremap ` ``<Esc>:let leavechar="`"<CR>i

"""""""""""""""""""""""""""
" KEYS MAPPING
"""""""""""""""""""""""""""

" Close all files
nmap <C-d> :xall<CR>
imap <C-d> <Esc>:xall<CR>

" Copy visual selection
vmap <C-c> "+y

"""""""""""""""""""""""""""
" SNIPPETS
"""""""""""""""""""""""""""

runtime snippets.vim

