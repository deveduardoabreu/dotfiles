" ~/.config/nvim/init.vim
"
" @author Eduardo Rodrigues de Abreu
" @email dev.eduardo.abreu@gmail.com

" Load all the plugins
source ~/.config/nvim/plugins.vim

set showmatch         " Show matching braces

set hlsearch          " switch on highlighting for the last used search pattern

set showcmd           " Show the current command in the bottom right

set mat=1             " Set the time to show matching braces to 1 second

set ignorecase        " Ignore case on searches

set smartcase         " Use case sensitive search if there is a capital letter in the search

set undolevels=1000   " Set the number of undos that are remembered

set number            " Show line numbers

set tabstop=4         " Use 4 space tabs

set shiftwidth=4      " Use 4 space tabs

set guifont=Monaco:h13 " Use Menlo size 13 font

set incsearch         " Incremental search: jump to the first occurrence of search while the user is still searching

set mouse=a           " Enable the mouse

set autoindent        " Use autoindentation

set splitbelow        " Make horizontal splits below instead of above

set splitright        " Make vertical splits on the right

set scrolloff=3       " Start scrolling when the cursor is 3 lines away from the bottom of the window

set wrap              " Wrap long lines

set laststatus=2      " Always display the status line

set cursorline        " Highlight the current line

set autoread          " Automatically reload the file when it is changed from an outside program

set nohlsearch        " Don't highlight search results

set expandtab         " Use spaces instead of tabs

set omnifunc=syntaxcomplete#Complete " Enable omnicompletion

set nofoldenable

set autowrite

set tags=tags; " Look for tags files

filetype indent on " Use filetype indentation

filetype plugin indent on " Allow plugins to use filetype indentation

" Make an undo directory if it does not exist
if !isdirectory($HOME . "/.config/nvim/undo")
    call mkdir($HOME . "/.config/nvim/undo", "p")
endif

set undodir=~/.config/nvim/undo " Set the undo directory

set undofile " Turn on persistent undo

set undoreload=10000

set backup
if !isdirectory($HOME . "/.config/nvim/backup")
    call mkdir($HOME . "/.config/nvim/backup", "p")
endif

set backupdir=~/.config/nvim/backup

"-----------------------
"	Mappings
"-----------------------

let mapleader = ","

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>


" easier window navigation
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l

" temp
nnoremap <S-Right> :tabnext<CR>
nnoremap <S-Left> :tabprevious<CR>

" move line
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Wildmenu
if has("wildmenu")
  set wildignore+=*.a,*.o
  set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
  set wildignore+=.DS_Store,.git,.hg,.svn
  set wildignore+=*~,*.swp,*.tmp
  set wildmenu
  set wildmode=longest,list
endif

"---------------------------------
"	Plugin Customizations
"---------------------------------

" Fugitive
autocmd BufReadPost fugitive://* set bufhidden=delete

" Lightline
let g:lightline = {
      \ 'colorscheme': 'nightowl',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" Nerdtree
nmap <F8> :NERDTreeToggle<CR>
nmap <leader>t :NERDTreeFind<CR>

" fzf
nnoremap <leader><leader> :Files<CR>
nnoremap <leader><Enter> :Buffers<CR>
nnoremap <leader>w :Windows<CR>
nnoremap <leader>c :BCommits<CR>
nnoremap <leader>r :Rg<space>

" Easy Align
nmap <leader>a <Plug>(EasyAlign)
xmap <leader>a <Plug>(EasyAlign)

if (has("termguicolors"))
 set termguicolors
endif

colo night-owl
