"""""""""""""""""""""""""""
" GENERALS
"""""""""""""""""""""""""""

" Shortcuts Index
" Control + o    open new file
" Control + s    save file
" Control + c    copy to system clipboard
" Control + v    paste from system clipboard
" Control + f    search
" Control + h    search and replace
" Control + t    new tab
" Control + n    next tab
" Control + p    previous tab
" Control + w    close file
" Control + q    close all files

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

"""""""""""""""""""""""""""
" INTERFACE
"""""""""""""""""""""""""""

" Show lines number
set number

" Colorscheme
colors spacevim

" Always show status bar
set laststatus=2
set statusline=                                            "clear the statusline
set statusline+=%<\                                        "cut at start
set statusline+=\ %m                                       "modified flag
set statusline+=\ %F                                       "full path name
set statusline+=%{b:gitbranch}                             "function git branch
set statusline+=\ %h                                       "help file flag
set statusline+=\ %r                                       "read only flag
set statusline+=\ %w                                       "windows flag
set statusline+=%=                                         "right separator
set statusline+=\ %y                                       "filetype
set statusline+=\ %{&fileencoding?&fileencoding:&encoding} "fileencoding
set statusline+=\ pos:%p%%                                 "percentage
set statusline+=\ col:%c                                   "cursor column
set statusline+=\ lin:%l/%L                                "cursor line/total lines
set statusline+=\ %{strftime(\"%H:%M\")}                   "time
set statusline+=\                                          "end space

" Always show current position
set ruler

" Always wrap long lines
set wrap

" Enable mouse cursor
set mouse=a

" Show current line in LineNbr bar
set cursorline

" Function to display git banch in status bar
function! StatuslineGitBranch()
  let b:gitbranch=""
  if &modifiable
    lcd %:p:h
    let l:gitrevparse=system("git rev-parse --abbrev-ref HEAD")
    lcd -
    if l:gitrevparse!~"fatal: not a git repository"
      let b:gitbranch="(".substitute(l:gitrevparse, '\n', '', 'g').") "
    endif
  endif
endfunction

augroup GetGitBranch
  autocmd!
  autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
augroup END

"""""""""""""""""""""""""""
" EXPLORER
"""""""""""""""""""""""""""

" No banner
"let g:netrw_banner = 0

" Better view in netrw explorer
let g:netrw_liststyle = 3

" For netrw explorer open in horizontal split
"let g:netrw_browse_split = 2
"let g:netrw_altv = 1

" Width of the directory explorer to 25 %
"let g:netrw_winsize = 25

"""""""""""""""""""""""""""
" TABS
"""""""""""""""""""""""""""

" Display tabs
nnoremap <C-n> :tabnext<CR>
inoremap <C-n> <Esc>:tabnext<CR>
nnoremap <C-p> :tabprevious<CR>
inoremap <C-p> <Esc>:tabprevious<CR>

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

" CSV
syntax match csvHeading /\%1l\%(\%("\zs\%([^"]\|""\)*\ze"\)\|\%(\zs[^,"]*\ze\)\)/
highlight def link csvHeading Type

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

" Close file
nnoremap <C-w> :x<CR>
inoremap <C-w> <Esc>:x<CR>

" Close all files
nnoremap <C-q> :xall<CR>
inoremap <C-q> <Esc>:xall<CR>

" Web preview
map <Leader>w :! surf %<CR>

"""""""""""""""""""""""""""
" PLUGINS
"""""""""""""""""""""""""""

"filetype off
" Set the runtime path to include Vundle and initialize
"set rtp+=/home/$USER/.config/nvim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'

"Plugin 'The-NERD-tree'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

"call vundle#end()
"filetype plugin indent on