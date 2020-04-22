"""""""""""""""""""""""""""
" GENERALS
"""""""""""""""""""""""""""

" Shortcuts Index
" Control + b    open explorer
" Control + o    open new file
" Control + s    save file
" Control + c    copy to system clipboard
" Control + v    paste from system clipboard
" Control + f    search
" Control + h    search and replace
" Control + t    new tab
" Control + n    next tab
" Control + p    previous tab
" Control + q    close all files
" , + w          preview in w3m

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

" Map the leader key
let mapleader = ","

" Transform ; to : for mistakes and SPACE to : for your health
map ; :
map <SPACE> :

" Open terminal
nnoremap <C-e> :edit term://zsh<CR>

"""""""""""""""""""""""""""
" INTERFACE
"""""""""""""""""""""""""""

" Show relative lines number
set number
set relativenumber

" Colorscheme
colors spacevim

" Always show status bar
set laststatus=2
set statusline=                                                "clear the statusline
set statusline+=%<\                                            "cut at start
set statusline+=\ %m                                           "modified flag
set statusline+=\ 📂\ %F                                       "full path name
set statusline+=\ %h                                           "help file flag
set statusline+=\ %r                                           "read only flag
set statusline+=\ %w                                           "windows flag
set statusline+=%=                                             "right separator
set statusline+=\ Ln\ %l/%L                                    "cursor line/total lines
set statusline+=\ Col\ %c                                      "cursor column
set statusline+=\ 📝\ %{&fileencoding?&fileencoding:&encoding} "fileencoding
set statusline+=\ 📄\ %y                                       "filetype
set statusline+=\ 🕑\ %{strftime(\"%H:%M\")}                   "time
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

" No banner
let g:netrw_banner = 0

" Better view in netrw explorer
let g:netrw_liststyle = 3

" For netrw explorer open in horizontal split
"let g:netrw_browse_split = 2
"let g:netrw_altv = 1

" Width of the directory explorer
let g:netrw_winsize = 20

" Search down into subfolders
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Open explorer
nnoremap <C-b> :Vexplore <CR>
inoremap <C-b> <Esc>:Vexplore <CR>

"""""""""""""""""""""""""""
" SPLITS
"""""""""""""""""""""""""""

"Move between splits                              ctrl + w ← ↑ → ↓
"Max out the width of the current split           ctrl + w |
"Max out the height of the current split          ctrl + w _
"Normalize all split sizes                        ctrl + w =
"Swap top/bottom or left/right split              ctrl+W R
"Close every window but the current one           ctrl+W o

set splitbelow
set splitright

"""""""""""""""""""""""""""
" TABS
"""""""""""""""""""""""""""

" Display tabs
nnoremap <C-n> :tabnext<CR>
nnoremap <C-p> :tabprevious<CR>

" Newtab
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>

" Always display the tabline
set showtabline=2

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

" Search
nnoremap <C-f> :g//<Left>

" Search and replace
nnoremap <C-h> :%s///g<Left><Left><Left>

"""""""""""""""""""""""""""
" CODING HELPS
"""""""""""""""""""""""""""

" Show invisible characters with :set list
set nolist
set listchars+=space:␣

" Highlight match parentheses
set showmatch
set matchtime=3

" Close the open parentheses
inoremap ( ()<Esc>:let leavechar=")"<CR>i
inoremap [ []<Esc>:let leavechar="]"<CR>i
inoremap { {<CR><BS>}<Esc>ko
inoremap < <><Esc>:let leavechar=">"<CR>i
inoremap " ""<Esc>:let leavechar='"'<CR>i
inoremap ' ''<Esc>:let leavechar="'"<CR>i

"""""""""""""""""""""""""""
" KEYS MAPPING
"""""""""""""""""""""""""""

" Open new file
nnoremap <C-o> :tabedit /home/$USER/ <CR>
inoremap <C-o> <Esc>:tabedit /home/$USER/ <CR>

" Save file
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

" Copy to system clipboard
vnoremap <C-c> "+y
map <Leader>y "*y

" Paste from system clipboard
inoremap <C-v> <Esc>"+p
map <Leader>p "*p

" Close all files
nnoremap <C-q> :xall<CR>
inoremap <C-q> <Esc>:xall<CR>

" Web preview
map <Leader>w :! w3m %<CR>
