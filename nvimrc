set shell=/bin/bash

" ==== PLUGIN INSTALLATION ===
" {{{
call plug#begin()
Plug 'bling/vim-airline'
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'rizzatti/funcoo.vim'
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
Plug 'chrisbra/histwin.vim'
Plug 'Keithbsmiley/investigate.vim'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }
Plug 'tomtom/tcomment_vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'jelera/vim-javascript-syntax'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'editorconfig/editorconfig-vim'
Plug 'edsono/vim-matchit'
Plug 'heavenshell/vim-jsdoc'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/vim-easy-align'
Plug 'fatih/vim-go'
Plug 'chriskempson/base16-vim'
call plug#end()
" }}}
"

if $TERM == 'xterm-256color'
    set t_Co=256
endif

" Colorscheme
" {{{
set background=dark
colorscheme solarized
" }}}

let javascript_enable_domhtmlcss=1

" ==== EDITOR SETUP ====
" {{{
set noshowmode
set cc=101
set noswapfile
set backup
set clipboard=unnamed
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
set history=500 " Increase history from 20 default to 1000
set shiftwidth=4 " Indent by 4 spaces
set smarttab
set tabstop=4
set softtabstop=4
set splitbelow
set splitright
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/smarty/*,*/vendor/*,*/node_modules/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*
set winminheight=0
set wrapscan
set synmaxcol=800
set title
set linebreak
set number
set guifont=Source\ Code\ Pro:h14
" }}}

" Local directories 
" {{{
set backupdir=~/.nvim/backups
set directory=~/.nvim/swaps
set undodir=~/.nvim/undo
" }}}

" Change mapleader
" {{{
let mapleader=","
" }}}

" Backups
" {{{
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

" Paste toggle (,p)
" {{{
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>
" }}}

" Faster autocomplete
" {{{
inoremap <C-space> <C-x><C-o>
" }}}

" Buffer navigation (,,) (,]) (,[) (,ls)
" {{{
map <Leader>] :bnext<CR>
map <Leader>[ :bprev<CR>
map <Leader>ls :buffers<CR>
" }}}

" Close Quickfix window (,qq)
" {{{
map <leader>qq :close<CR>
" }}}
"
" NERD Commenter
" {{{
let NERDSpaceDelims=1
let NERDCompactSexyComs=1
let g:NERDCustomDelimiters = { 'racket': { 'left': ';', 'leftAlt': '#|', 'rightAlt': '|#' } }
" }}}

" Sudo write (,W)
" {{{
noremap <leader>W :w !sudo tee %<CR>
" }}}

" Clear last search (,qs)
" {{{
map <silent> <leader>qs <Esc>:noh<CR>
" }}}

" Better Completion
" {{{
set complete=.,w,b,u,t
set completeopt=longest,menuone,preview
" }}}

" Smarter code indenting
" {{{
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv
" }}}

" Enable folding
" {{{
set foldcolumn=0
set foldenable
set foldlevel=0
set foldmethod=marker
set foldtext=FoldText()
" }}}

" Speed up viewport scrolling
" {{{
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
" }}}

" Faster split resizing (+,-)
" {{{
if bufwinnr(1)
		map + <C-W>+
		map - <C-W>-
endif
" }}}

" Better split switching (Ctrl-j, Ctrl-k, Ctrl-h, Ctrl-l)
" {{{
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-L> <C-W>l
" }}}

" Yank from cursor to end of line
" {{{
nnoremap Y y$
" }}}

" Insert newline
" {{{
map <leader><Enter> o<ESC>
" }}}

" Search and replace word under cursor (,*)
" {{{
nnoremap <leader>* :%s/\<<C-r><C-w>\>//<Left>  
" }}}

" Strip trailing whitespace (,ss)
" {{{
function! StripWhitespace ()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>
" }}}

" Toggle show tabs and trailing spaces (,c) 
" {{{
  set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
  set fcs=fold:-
  nnoremap <silent> <leader>c :set nolist!<CR>
  " }}}
" Join lines and restore cursor location (J)
" {{{
nnoremap J mjJ`j
" }}}

" Toggle folds (<Space>)
" {{{
nnoremap <silent> <space> :exe 'silent! normal! '.((foldclosed('.')>0)? 'zMzx' : 'zc')<CR>
" }}}

" Fix page up and down
" {{{
map <PageUp> <C-U>
map <PageDown> <C-D>
imap <PageUp> <C-O><C-U>
imap <PageDown> <C-O><C-D>
" }}}

" Filetypes setup
" {{{
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

" Set syntax highlight
autocmd BufEnter *.ctp set filetype=php
autocmd BufEnter *.md set filetype=markdown
autocmd BufEnter *.markdown set filetype=markdown
autocmd BufEnter *.less set filetype=css
autocmd BufEnter *.scss set filetype=css
autocmd BufEnter *.asc set filetype=javascript
autocmd BufEnter *.as set filetype=javascript
autocmd BufEnter *.ds set filetype=javascript
autocmd BufEnter *.es6 set filetype=javascript
autocmd BufEnter *.json set filetype=javascript
autocmd BufEnter *.ejs set filetype=html
" }}}

" Only show cursorline in the current window and in normal mode.
" {{{
augroup cline
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END
" }}}

" Highlight VCS conflict markers
" {{{
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'
" }}}


" ==== PLUGIN CONFIGURATION ====

" airline.vim
" {{{
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
" }}}
"
" EasyAlign.vim
" {{{
vmap <Enter> <Plug>(EasyAlign)
" }}}

" Investigate.vim
" {{{
let g:investigate_url_for_javascript="https://developer.mozilla.org/en-US/search?q=^s"
let g:investigate_url_for_html="https://developer.mozilla.org/en-US/search?q=^s"
let g:investigate_url_for_css="https://developer.mozilla.org/en-US/search?q=^s"
" }}}

" JSDoc.vim
" {{{
" let g:jsdoc_allow_input_prompt=1
let g:jsdoc_default_mapping=0
let g:jsdoc_additional_descriptions=1
" }}}

" NerdTree.vim
" {{{
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
" CtrlP.vim
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

" Make CtrlP use ag for listing the files. Way faster and no useless files.
" Without --hidden, it never finds .travis.yml since it starts with a dot
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0
set runtimepath^=~/.vim/bundle/ctrlp.vim
" }}}

" ag.vim(Silver searcher settings)
" {{{
map <leader>a :Ag!<space>
map <leader>A :Ag! "<C-r>=expand('<cword>')<CR>"
" }}}

" autoclose.vim
" {{{
nmap <Leader>xa <Plug>ToggleAutoCloseMappings
" }}}
