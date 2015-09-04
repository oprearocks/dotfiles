set shell=/usr/local/bin/fish\ --login
" Make vim more useful
set nocompatible
filetype off    " Required for Vundle

set rtp+=~/.vim/bundle/Vundle
call vundle#rc()

" Let Vundle manage itself
Bundle 'gmarik/Vundle'

" My Bundles
Bundle 'rking/ag.vim'

Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'

" Bundle 'rizzatti/dash.vim'
" Bundle 'rizzatti/funcoo.vim'

Bundle 'mattn/emmet-vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

Bundle 'kakkyz81/evervim'
Bundle 'chrisbra/histwin.vim'
Bundle 'Keithbsmiley/investigate.vim'
" Bundle 'Shutnik/jshint2.vim'
" Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'msanders/snipmate.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'edsono/vim-matchit'
Bundle 'heavenshell/vim-jsdoc'
Bundle 'pangloss/vim-javascript'
Plugin 'junegunn/vim-easy-align'

" Colors
Plugin 'chriskempson/base16-vim'

let g:syntastic_javascript_checkers = ['eslint']

" Set syntax highlighting options.
if $TERM == 'xterm-256color'
    set t_Co=256
endif

syntax  on

set background=dark

" Twilight color scheme options
" {{{
" colorscheme twilight
" }}}

" Solarized color scheme options
" {{{
" let g:solarized_visibility="normal"
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
" let g:solarized_bold=1
" let g:solarized_underline=1
" let g:solarized_italic=1
colorscheme solarized
" }}}

set cc=100
" Always write pretty code
vmap <Enter> <Plug>(EasyAlign)

" Change mapleader
let mapleader=","

" Backups setup
" {{{

set backup                        " enable backups
set noswapfile                    " it's 2013, Vim.

set undodir=~/.vim/tmp/undo/     " undo files
set backupdir=~/.vim/tmp/backup/ " backups
set directory=~/.vim/tmp/swap/  " swap files

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

" }}}

" Investigate.vim
" {{{
let g:investigate_url_for_javascript="https://developer.mozilla.org/en-US/search?q=^s"
let g:investigate_url_for_html="https://developer.mozilla.org/en-US/search?q=^s"
let g:investigate_url_for_css="https://developer.mozilla.org/en-US/search?q=^s"
" }}}

" Set some junk
set clipboard=unnamed
set modelines=0
set autoindent " Copy indent from last line when starting new line.
set backspace=indent,eol,start
set cursorline " Highlight current line
set showmatch " Show matching parens
" highlight CursorLine cterm=none
" highlight CursorLineNr ctermbg=none ctermfg=196 gui=bold,underline cterm=bold,underline term=bold,underline
set diffopt=filler " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set encoding=utf-8 " BOM often causes trouble
set esckeys " Allow cursor keys in insert mode.
set expandtab " Expand tabs to spaces

" Smarter code indenting
    nmap <D-[> <<
    nmap <D-]> >>
    vmap <D-[> <gv
    vmap <D-]> >gv

" JSDoc.vim
" {{{
" let g:jsdoc_allow_input_prompt=1
let g:jsdoc_default_mapping=0
let g:jsdoc_additional_descriptions=1
" }}}

" Folding settings(Credits to Lokaltog)
    set foldcolumn=0
    set foldenable
    set foldlevel=0
    set foldmethod=marker
    set foldtext=FoldText()

set t_ut=
set nowrap
set textwidth=99
set formatoptions=
set formatoptions+=c " Format comments
set formatoptions+=r " Continue comments by default
set formatoptions+=o " Make comment when using o or O from comment line
set formatoptions+=q " Format comments with gq
set formatoptions+=n " Recognize numbered lists
set formatoptions+=2 " Use indent from 2nd line of a paragraph
set formatoptions+=l " Don't break lines that are already long
set formatoptions+=1 " Break before 1-letter words
set gdefault " By default add g flag to search/replace. Add g to toggle.
set hidden " When a buffer is brought to foreground, remember undo history and marks.
set history=1000 " Increase history from 20 default to 1000
set hlsearch " Highlight searches
set ignorecase " Ignore case of searches.
set incsearch " Highlight dynamically as pattern is typed.
set laststatus=2 " Always show status line
set lispwords+=defroutes " Compojure
set lispwords+=defpartial,defpage " Noir core
set lispwords+=defaction,deffilter,defview,defsection " Ciste core
set lispwords+=describe,it " Speclj TDD/BDD
set magic " Enable extended regexes.
set mouse=a " Enable moouse in all in all modes.
set noerrorbells " Disable error bells.
set nojoinspaces " Only insert single space after a '.', '?' and '!' with a join command.
set nostartofline " Don't reset cursor to start of line when moving around.
set nu " Enable line numbers.
set ofu=syntaxcomplete#Complete " Set omni-completion method.
set report=0 " Show all changes.
set ruler " Show the cursor position
set scrolloff=3 " Start scrolling three lines before horizontal border of window.
set shiftwidth=4 " The # of spaces for indenting
set shortmess=atI " Don't show the intro message when starting vim.
set showmode " Show the current mode.
set showtabline=2 " Always show tab bar.
set noshowmode " Hide the default mode text
set sidescrolloff=3 " Start scrolling three columns before vertical border of window.
set smartcase " Ignore 'ignorecase' if search patter contains uppercase characters.
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
set tabstop=4
set softtabstop=4 " Tab key results in 4 spaces
set splitbelow " New window goes below
set splitright " New windows goes right
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set title " Show the filename in the window titlebar.
set ttyfast " Send more characters at a given time.
set ttymouse=xterm " Set mouse type to xterm.
set undofile " Persistent Undo.
set undoreload=10000
set vb " Use visual bell instead of audible bell (annnnnoying)
set wildchar=<TAB> " Character for CLI expansion (TAB-completion).
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/smarty/*,*/vendor/*,*/node_modules/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*
set wildmenu " Hitting TAB in command mode will show possible completions above command line.
set wildmode=list:longest,full " Complete only until point of ambiguity.
set winminheight=0 "Allow splits to be reduced to a single line.
set wrapscan " Searches wrap around end of file
set ttimeoutlen=100 " Decrease timeout for faster insert with 'O'
set list
set listchars=tab:▸\ ,eol:¬,trail:·,extends:❯,precedes:❮
set lazyredraw
set matchtime=3
set showbreak=↪
set splitbelow
set splitright
set autowrite
set autoread
set shiftround
set title
set linebreak
set colorcolumn=101
set visualbell

set fillchars+=diff:⣿,vert:│

" Don't try to highlight lines longer than 800 characters.
set synmaxcol=800


" Better Completion
set complete=.,w,b,u,t
set completeopt=longest,menuone,preview

" Status Line
" hi User1 guibg=#455354 guifg=#CC4329 ctermbg=238 ctermfg=196   gui=bold,underline cterm=bold,underline term=bold,underline
" hi User2 guibg=#455354 guifg=#CC4329 ctermbg=238 ctermfg=196 gui=bold           cterm=bold           term=bold
" set statusline=[%n]\ %1*%<%.99t%*\ %2*%h%w%m%r%*%y[%{&ff}→%{strlen(&fenc)?&fenc:'No\ Encoding'}]%=%-16(\ L%l,C%c\ %)%P
let g:Powerline_symbols = 'fancy'

" Speed up viewport scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Faster split resizing (+,-)
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif

" Better split switching (Ctrl-j, Ctrl-k, Ctrl-h, Ctrl-l)
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" Sudo write (,W)
noremap <leader>W :w !sudo tee %<CR>

" Remap :W to :w
" command W w

" Better mark jumping (line + col)
nnoremap ' `

" Hard to type things
imap >> →
imap << ←
imap ^^ ↑
imap VV ↓
imap aa λ

set fcs=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>

" Clear last search (,qs)
map <silent> <leader>qs <Esc>:noh<CR>
" map <silent> <leader>qs <Esc>:let @/ = ""<CR>


" Remap keys for auto-completion, disable arrow keys
" I still need these cuz im nub. so nub.
" inoremap <expr>  <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
" inoremap <expr>  <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
" inoremap <expr>  <Down>     pumvisible() ? "\<C-n>" : "\<NOP>"
" inoremap <expr>  <Up>       pumvisible() ? "\<C-p>" : "\<NOP>"
" inoremap <Left>  <NOP>
" inoremap <Right> <NOP>

" Paste toggle (,p)
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>

" Faster autocomplete
inoremap <C-space> <C-x><C-o>

" NERD Commenter
let NERDSpaceDelims=1
let NERDCompactSexyComs=1
let g:NERDCustomDelimiters = { 'racket': { 'left': ';', 'leftAlt': '#|', 'rightAlt': '|#' } }

" NERDTree config  {{{
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeClose<cr>:NERDTreeFind<cr>

augroup ps_nerdtree
    au!

    au Filetype nerdtree setlocal nolist
    au Filetype nerdtree nnoremap <buffer> H :vertical resize -10<cr>
    au Filetype nerdtree nnoremap <buffer> L :vertical resize +10<cr>
    " au Filetype nerdtree nnoremap <buffer> K :q<cr>
augroup END
 
let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index',
                    \ 'xapian_index', '.*.pid', 'monitor.py', '.*-fixtures-.*.json',
                    \ '.*\.o$', 'db.db', 'tags.bak', '.*\.pdf$', '.*\.mid$',
                    \ '.*\.midi$']
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 0
let NERDTreeChDirMode = 2
"}}}

" Buffer navigation (,,) (,]) (,[) (,ls)
" map <Leader>, <C-^>
map <Leader>] :bnext<CR>
map <Leader>[ :bprev<CR>
map <Leader>ls :buffers<CR>

" Close Quickfix window (,qq)
map <leader>qq :close<CR>

" Yank from cursor to end of line
nnoremap Y y$

" Insert newline
map <leader><Enter> o<ESC>

" Search and replace word under cursor (,*)
nnoremap <leader>* :%s/\<<C-r><C-w>\>//<Left>  

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>

" Save and restore folds
" :au BufWinLeave * mkview
" :au BufWinEnter * silent loadview

" Join lines and restore cursor location (J)
nnoremap J mjJ`j

" Toggle folds (<Space>)
nnoremap <silent> <space> :exe 'silent! normal! '.((foldclosed('.')>0)? 'zMzx' : 'zc')<CR>

" Fix page up and down
map <PageUp> <C-U>
map <PageDown> <C-D>
imap <PageUp> <C-O><C-U>
imap <PageDown> <C-O><C-D>

" 'Save', but another way
" inoremap <leader>ss <esc>:w<cr>a
" nnoremap <leader>ss :w<cr>
" vnoremap <leader>ss <esc>:w<cr>

" Restore cursor position
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Set relative line numbers
set relativenumber " Use relative line numbers. Current line is still in status bar.
au BufReadPost,BufNewFile * set relativenumber

filetype plugin indent on

" JSON
au BufRead,BufNewFile *.json set ft=json syntax=javascript

" Jade
au BufRead,BufNewFile *.jade set ft=jade syntax=jade

" Common Ruby files
au BufRead,BufNewFile Rakefile,Capfile,Gemfile,.autotest,.irbrc,*.treetop,*.tt set ft=ruby syntax=ruby

" Nu
au BufNewFile,BufRead *.nu,*.nujson,Nukefile setf nu

" Coffee Folding
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

" ZSH
au BufRead,BufNewFile .zsh_rc,.functions,.commonrc,.aliases set ft=zsh

" CtrlP 
" {{{
let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_map = '<c-f>'
let g:ctrlp_switch_buffer = 'Et' " If open, focus on file don't open it twice
let g:ctrlp_match_window_bottom = 1 " Show at top of window
let g:ctrlp_working_path_mode = 2 " Smart path mode
let g:ctrlp_mru_files = 1 " Enable Most Recently Used files feature
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open
let g:ctrlp_split_window = 1 " <CR> = New Tab
let g:ctrlp_max_height = 30 " Don't let CtrlP get too big
set runtimepath^=~/.vim/bundle/ctrlp.vim
" }}}

" Silver searcher settings
map <leader>a :Ag!<space>
map <leader>A :Ag! "<C-r>=expand('<cword>')<CR>"

" Clojure.vim
let g:vimclojure#ParenRainbow = 1 " Enable rainbow parens
let g:vimclojure#DynamicHighlighting = 1 " Dynamic highlighting
let g:vimclojure#FuzzyIndent = 1 " Names beginning in 'def' or 'with' to be indented as if they were included in the 'lispwords' option

" Rainbow Parenthesis
nnoremap <leader>rp :RainbowParenthesesToggle<CR>

" Source .vimrc files after editing
autocmd bufwritepost .vimrc source <afile>

" Auto save files when losing focus
" set autowriteall
" autocmd FocusLost * silent! :wa
" autocmd TabLeave * silent! :wa

" Filetype stuff

autocmd BufEnter *.ctp set filetype=php
autocmd BufEnter *.md set filetype=markdown
autocmd BufEnter *.less set filetype=css
autocmd BufEnter *.scss set filetype=css
autocmd BufEnter *.asc set filetype=javascript
autocmd BufEnter *.as set filetype=javascript
autocmd BufEnter *.ds set filetype=javascript
autocmd BufEnter *.es6 set filetype=javascript
autocmd BufEnter *.json set filetype=javascript
autocmd BufEnter *.isml set filetype=html
autocmd BufEnter *.mnw set filetype=html
autocmd BufEnter *.ejs set filetype=html

" JSHint stuff
" autocmd BufWritePost *.js JSHint

"Toggle autoclose.vim
nmap <Leader>xa <Plug>ToggleAutoCloseMappings

" MarkChanged {{{

sign define line_changed text=+ texthl=DiffAdded

function! MarkChanged(s, e)
    for i in range(a:s, a:e)
        exe ":sign place " . i . " line=" . i . " name=line_changed file=" . expand("%:p")
    endfor
endfunction

function! MarkUnchanged(s, e)
    for i in range(a:s, a:e)
        call cursor(i, 0)
        silent! sign unplace
    endfor
endfunction

command! -range MarkChanged call MarkChanged(<line1>, <line2>)
command! -range MarkUnchanged call MarkUnchanged(<line1>, <line2>)

" nnoremap <leader>m :MarkChanged<cr>
" vnoremap <leader>m :MarkChanged<cr>
" nnoremap <leader>M :MarkUnchanged<cr>
" vnoremap <leader>M :MarkUnchanged<cr>

" }}}
 
" Environments (GUI/Console) ---------------------------------------------- {{{

if has('gui_running')
    " GUI Vim

	set transparency=3
	" fix js regex syntax
	set regexpengine=1

    " set guifont=Sauce\ Code\ Powerline\ Light:h15
    " set guifont=Source\ Code\ Pro:h15
    " set guifont=Monaco\ for\ Powerline:h14
    set guifont=Ubuntu\ Mono\ derivative\ Powerline:h17
    " set guifont=Inconsolata\ for\ Powerline:h16

    " Remove all the UI cruft
    set go-=T
    set go-=l
    set go-=L
    set go-=r
    set go-=R

    highlight SpellBad term=underline gui=undercurl guisp=Orange
    
    if has("gui_macvim")
        " Full screen means FULL screen
        set fuoptions=maxvert,maxhorz

        " Use the normal HIG movements, except for M-Up/Down
        let macvim_skip_cmd_opt_movement = 1
        no   <D-Left>       <Home>
        no!  <D-Left>       <Home>
        no   <M-Left>       <C-Left>
        no!  <M-Left>       <C-Left>

        no   <D-Right>      <End>
        no!  <D-Right>      <End>
        no   <M-Right>      <C-Right>
        no!  <M-Right>      <C-Right>

        no   <D-Up>         <C-Home>
        ino  <D-Up>         <C-Home>
        imap <M-Up>         <C-o>{

        no   <D-Down>       <C-End>
        ino  <D-Down>       <C-End>
        imap <M-Down>       <C-o>}

        imap <M-BS>         <C-w>
        inoremap <D-BS>     <esc>my0c`y
    else
        " Non-MacVim GUI, like Gvim
    end
else
    " Console Vim
    " For me, this means iTerm2, possibly through tmux

    " Mouse support
    set mouse=a
endif

" }}}

" Cursorline {{{
" Only show cursorline in the current window and in normal mode.

augroup cline
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END

" }}}

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

let javascript_enable_domhtmlcss=1
