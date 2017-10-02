set background=dark
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_contrast_light = "hard"
colorscheme gruvbox

set vb
set gcr=a:blinkon0              " turn off blinking in gvim
set t_Co=256                    " 256 Colors
set t_vb=                       " turn off visual bell
set mouse=a                     " disable mouse
set hidden                      " don't abadon buffers
set diffopt+=iwhite             " ignore whitespace in diff-mode
set autoread                    " update changed files
set hlsearch history=10000 incsearch
set backspace=indent,eol,start
set expandtab autoindent tabstop=2 shiftwidth=2
set foldmethod=indent foldlevel=1000
set updatetime=500
set ignorecase smartcase        " better searching
set undolevels=10000            " many undos
set noshelltemp
set noerrorbells                " no bells and whistles
set novisualbell                " no bells and whistles
set grepprg=grep\ -nH\ $*
set shortmess=a
set rtp+=/usr/share/vim/addons
set shell=bash
set gdefault
set colorcolumn=80
set textwidth=80
set showmatch
set matchtime=5
set laststatus=2 linebreak
set wrap
set showbreak=«
set relativenumber
set scrolloff=5
set sidescrolloff=5
set sidescroll=1
hi ColorColumn ctermbg=lightgrey guibg=lightgrey
" set guioptions=agimrLtT " Default gui options
" set guioptions+=c
" set guioptions-=Tr

" create Backup/tmp/undo dirs
function! InitBackupDir()
  let l:parent = $HOME . '/.vim/'
  let l:backup = l:parent . 'backup/'
  let l:tmpdir = l:parent . 'tmp/'
  let l:undodi = l:parent . 'undo/'
  if !isdirectory(l:parent)
    call mkdir(l:parent)
  endif
  if !isdirectory(l:backup)
    call mkdir(l:backup)
  endif
  if !isdirectory(l:tmpdir)
    call mkdir(l:tmpdir)
  endif
  if !isdirectory(l:undodi)
    call mkdir(l:undodi)
  endif
endfunction

call InitBackupDir()

" backup & Files
set backup
set backupdir=~/.vim/backup//
set directory=~/.vim/tmp//
set viminfo='20,<1000,s100,h,n~/.vim/tmp/info
set undodir=~/.vim/undo//
set undofile

" grepping
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" lessspace.vim

let g:lessspace_blacklist = ['javascript', 'yaml']

" Multiple Cursors
nnoremap <silent> <M-l> :MultipleCursorsFind <C-R>/<CR>
vnoremap <silent> <M-l> :MultipleCursorsFind <C-R>/<CR>

" Testing

let test#strategy = "neoterm"

" Allow switching windows even if terminal is open.
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

let g:deoplete#enable_at_startup = 1

let g:neomake_elixir_enabled_makers = ['elixir']
"let g:neomake_elixir_elixir_maker = {
"      \ 'exe': 'elixirc',
"      \ 'args': [
"        \ '--ignore-module-conflict', '--warnings-as-errors',
"        \ '--app', 'mix', '--app', 'ex_unit',
"        \ '-o', '$TMPDIR', '%:p'
"      \ ],
"      \ 'errorformat':
"          \ '%E** %s %f:%l: %m,' .
"          \ '%W%f:%l'
"      \ }

let g:neomake_elixir_elixir_maker = {
      \ 'exe' : 'mix',
      \ 'args': ['compile', '--warnings-as-errors'],
      \ 'cwd': getcwd(),
      \ 'errorformat':
        \ '** %s %f:%l: %m,' .
        \ '%f:%l: warning: %m'
      \ }

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Fuzzy matching (used instead of ctrlp)
nnoremap <C-p> :FuzzyOpen<CR>

" CtrlP
let g:ctrlp_max_files = 100000
let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}

" React
let g:jsx_ext_required = 0

" NeoFormat

let g:neoformat_only_msg_on_error = 1
let g:neoformat_enabled_javascript = ['prettiereslint']

function! neoformat#formatters#javascript#prettiereslint() abort
    return {
        \ 'exe': 'prettier-eslint',
        \ 'args': [ '--stdin', '--single-quote', '--no-semi', '--bracket-spacing', '--trailing-comma', 'es5', '--eslint-ignore', '| head -c -1'],
        \ 'stdin': 1,
        \ }
endfunction

function! neoformat#formatters#javascript#prettier() abort
    return {
        \ 'exe': 'prettier',
        \ 'args': [ '--stdin', '--single-quote', '--no-semi', '--trailing-comma', 'es5', '--jsx-bracket-same-line'],
        \ 'stdin': 1,
        \ }
endfunction

" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction

augroup fmt
  autocmd!
  autocmd BufWritePre * Neoformat
augroup END

" autocmd BufEnter * setlocal cursorline cursorcolumn
" hi cursorline ctermbg=248 guibg=grey10

" highlight StatusLine term=reverse cterm=none ctermbg=7 ctermfg=0
" autocmd InsertLeave * highlight StatusLine term=none cterm=none ctermbg=7 ctermfg=0
" autocmd InsertEnter * highlight StatusLine term=reverse cterm=none ctermbg=1

augroup javascript
  set foldmethod=syntax
  set conceallevel=1
  let g:javascript_conceal_function             = "ƒ"
  let g:javascript_conceal_null                 = "ø"
  let g:javascript_conceal_this                 = "@"
  let g:javascript_conceal_return               = "⇚"
  let g:javascript_conceal_undefined            = "¿"
  let g:javascript_conceal_NaN                  = "ℕ"
  let g:javascript_conceal_prototype            = "¶"
  let g:javascript_conceal_static               = "•"
  let g:javascript_conceal_super                = "Ω"
  let g:javascript_conceal_arrow_function       = "⇒"
augroup END

augroup lyx
  autocmd BufRead *.lyx set syntax=lyx foldmethod=syntax foldcolumn=3
  autocmd BufRead *.lyx syntax sync fromstart
augroup END

augroup haxe
  autocmd BufRead *.hx set syntax=haxe
augroup END

augroup go
  map <F5> :w<CR>:!go run %<CR>
  let g:go_play_open_browser = 0
  let g:go_fmt_fail_silently = 1
  let g:go_fmt_command = "goimports"
  " set rtp+=/usr/share/go/misc/vim
  " set rtp+=/usr/local/go/misc/vim
  " source ~/go/src/code.google.com/p/go.tools/cmd/oracle/oracle.vim
  " set rtp+=/home/manveru/.gvm/gos/go1.2/misc/vim
  " autocmd FileType go autocmd BufWritePre <buffer> Fmt
  " autocmd FileType go compiler go
  " set omnifunc=syntaxcomplete#Complete
  " let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
augroup END

"set foldmethod=syntax      " very occasionally I need folding
"set number                 " sometimes i like having linenumbers... :)

" set breakat " ^I!@*-_+;:,./?"

com! -complete=file -nargs=* Edit exec "!vim --servername " . v:servername . " --remote <args>"

let g:vimwiki_list = [{'path': '~/Dropbox/wiki', 'path_html': '~/Dropbox/wiki_html'}]

let g:tex_flavor = "latex"

let g:FindFileIgnore = ['*.o', '*.pyc', '*/_darcs/*']
" autocmd VimEnter * :FC .

let g:treeExplVertical = 1
let g:treeExplWinSize = 10
let g:treeExplIndent = 2

" nmap <C-o> :FC .<CR>:FindFile<CR>
" nnoremap o :call OF()<CR>

" imap <S-CR> <CR><CR>end<Esc>-cc
" imap <C-h> <C-o>h
" imap <C-j> <C-o>j
" imap <C-k> <C-o>k
" imap <C-l> <C-o>l

inoremap <expr> <leader>time strftime("%Y-%m-%d %H:%M")
nnoremap <silent> <C-L> :nohlsearch<cr><C-L>

map <F3> :!cheat<SPACE>

augroup qf
    autocmd!
    autocmd FileType qf set nobuflisted
augroup END

" gt for buffer
map gb :bnext<CR>
" gT for buffer
map gB :bprevious<CR>
" close current buffer
map gc :bdelete<CR>
" force close current buffer
map gC :bdelete!<CR>
" <C-6> magically jumps to other buffers and takes number prefix for specific
" buffer number
map <leader>b <C-^>

map <leader>h :%!pretty-html<CR>

" ,v brings up my .vimrc
" ,V reloads it -- making all changes active (have to save first)
" map ,v :sp ~/.vimrc<CR><C-W>_
" map <silent> ,V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Insert spaces in normal mode
" nnoremap <Space> i<Space><Esc>

" Insert newline in normal mode
" nmap <Enter> _i<Enter><Esc>

" Toggle input/normal mode by leader
nmap <leader>i i
imap <leader>i <Esc>l

vnoremap <c-a> :Inc<CR>
vnoremap # y?\V<C-R>=substitute(escape(@@,"/\\"),"\n","\\\\n","ge")<CR><CR>
vnoremap * y/\V<C-R>=substitute(escape(@@,"/\\"),"\n","\\\\n","ge")<CR><CR>

" au BufRead,BufNewFile *.rb set tags=~/izip/darcs/opensource/tags,tags
au BufRead,BufNewFile *.rb set tags=tags,~/c/ramaze/tags
au BufNewFile,BufRead *.m{,ar}{,k}d{,own} set ai formatoptions=tcroqn2 comments=n:> syntax=mkd
au BufNewFile,BufRead *.rhtml setf eruby
au BufNewFile,BufRead *.(xhtml|nag|zmr) setf nagoro
au BufNewFile,BufRead *.(byss|rake|ru) set filetype=ruby syntax=ruby
au BufNewFile,BufRead (.irbrc|Vagrantfile) setf ruby
au BufNewFile,BufRead *.st    setf st
au BufNewFile,BufRead *.haml  setf haml
au BufNewFile,BufRead *.neko  setf neko
au BufNewFile,BufRead *.ox    setf oxid
au BufNewFile,BufRead *.fdi   setf xml
au BufNewFile,BufRead *.rl    setf ragel
au BufNewFile,BufRead *.sass  setf sass
au BufNewFile,BufRead *.go    setf go
au BufNewFile,BufRead .envrc  setf sh

au FileType slim set textwidth=0
au FileType ruby,eruby,nagaro set omnifunc=rubycomplete#Complete
au FileType ruby,eruby,nagaro let g:rubycomplete_rails = 0
au FileType ruby,eruby,nagaro let g:rubycomplete_buffer_loading = 1
au FileType ruby,eruby,nagaro let g:rubycomplete_classes_in_global = 1
au FileType ruby,eruby,nagaro let g:rubycomplete_include_object = 1
au FileType ruby,eruby,nagaro let g:rubycomplete_include_object_space = 1
" au FileType ruby,eruby,nagoro let ruby_fold = 1
" au FileType ruby,eruby,nagoro set foldmethod=syntax

au FileType neko map <F5> :w<CR>:!rake run:%<CR>
au FileType oxid map <F5> :w<CR>:!oxid %<CR>
au FileType ruby map <F5> :w<CR>:!ruby %<CR>

au FileType haskell,vhdl,ada            let b:comment_leader = '-- '
au FileType vim                         let b:comment_leader = '" '
au FileType c,cpp,java,go               let b:comment_leader = '// '
au FileType sh,make,ruby                let b:comment_leader = '# '
au FileType tex                         let b:comment_leader = '% '
noremap <silent> ,c :<C-B>sil <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:noh<CR>
noremap <silent> ,u :<C-B>sil <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:noh<CR>
" ,c comments out a region
" ,u uncomments a region

" au BufWritePre *.rb :!ruby -c %
au BufWritePost ~/.vimrc so ~/.vimrc
" let g:checksyntax_auto = 1
" let g:checksyntax_auto_ruby = 1

autocmd! BufWritePost * Neomake


" Linting for LESS
if executable('lessc')
  autocmd FileType less setlocal makeprg=lessc\ --lint\ --no-color\ %
  autocmd FileType less setlocal
        \ errorformat=%E%.%#Error:\ %m\ in\ %f\ on\ line\ %l\\,\ column\ %c:
  " Ignore unmatched lines
  autocmd FileType less setlocal errorformat+=%-G%.%#
endif

" Use prettier to autoformat (gq in Visual mode)
if executable('prettier')
  autocmd FileType javascript setlocal formatprg=prettier\ --stdin\ --single-quote\ --no-semi\ --trailing-comma\ all
endif

" let g:syntastic_mode_map = { 'mode': 'active',
"                             \ 'active_filetypes': ['python', 'javascript'],
"                             \ 'passive_filetypes': [] }
"
" let g:syntastic_check_on_open=1
" let g:syntastic_check_on_wq=1
" let g:syntastic_aggregate_errors=1
" let g:syntastic_error_symbol='✗'
" let g:syntastic_warning_symbol='⚠'
" let g:syntastic_enable_ballons=has('ballon_eval')
" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_auto_jump=1
" let g:syntastic_auto_loc_list=1
" let g:syntastic_loc_list_height=3
" let g:syntastic_ignore_files = ['^/usr/', '*node_modules*', '*vendor*', '*build*', '*LOCAL*', '*BASE', '*REMOTE*']
" let g:syntastic_mode_map = { 'mode': 'active' }
" let g:syntastic_javascript_checkers=['eslint']
" let g:syntastic_json_checkers=['jsonlint', 'jsonval']
" let g:syntastic_ruby_checkers=['rubocop','mri']
" let g:syntastic_perl_checkers=['perl','perlcritic','podchecker']
" let g:syntastic_python_checkers=['pylint','pep8','python']
" let g:syntastic_cpp_checkers=['gcc','cppcheck','cpplint','ycm','clang_tidy','clang_check']
" let g:syntastic_c_checkers=['gcc','make','cppcheck','clang_tidy','clang_check']
" let g:syntastic_haml_checkers=['haml_lint', 'haml']
" let g:syntastic_html_checkers=['jshint']
" let g:syntastic_yaml_checkers=['jsyaml']
" let g:syntastic_sh_checkers=['sh','shellcheck','checkbashisms']
" let g:syntastic_vim_checkers=['vimlint']
" let g:syntastic_enable_perl_checker=1
" let g:syntastic_c_clang_tidy_sort=1
" let g:syntastic_c_clang_check_sort=1
" let g:syntastic_c_remove_include_errors=1
" let g:syntastic_quiet_messages = { "level": "[]", "file": ['*_LOCAL_*', '*_BASE_*', '*_REMOTE_*']  }
" let g:syntastic_stl_format = '[%E{E: %fe #%e}%B{, }%W{W: %fw #%w}]'
" let g:syntastic_java_javac_options = "-g:none -source 8 -Xmaxerrs 5 -Xmaswarns 5"

" don't require jsx ext for jsx in js files
let g:jsx_ext_required = 0

" Remove trailing \s
"   http://vim.wikia.com/wiki/Auto_remove_white_space_when_saving
" it's more about contributing to projects that have excessive trailing
" whitespaces. Then git tells me that i have to commit pretty much the whole
" file, since there have been changes all over the place.

" autocmd BufWritePre * :%s/\s\+$//e
" autocmd BufEnter *.php :%s/[ \t\r]\+$//e

" Remove trailing blanks upon saving except from lines
" containing sigdashes: '--  '
" TODO: find a way to :w only if changes were made
" function! StripTrailingSpaces()
"   exe "normal :%s/\\s\\+$//g\<CR>"
" endfunction

" au BufWritePre * silent! call StripTrailingSpaces()
" au BufEnter,BufNewFile,BufRead *.rb silent! call StripTrailingSpaces()
au BufEnter,BufRead,BufNewFile *.proto setfiletype proto

" Highlight whitespace, yay!
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
set wildmode=longest,list:longest,full

let g:gitgutter_max_signs=10000
" set completeopt=menuone,preview,noinsert
" function! Completefunc(findstart, base)
"     return "\<c-x>\<c-p>"
" endfunction
nnoremap <C-x><C-b> :w<cr>:Neomake<cr>
