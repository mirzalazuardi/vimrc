set tags=./tags;
set nocompatible
filetype off
syntax on
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
" Let Vundle manage Vundle
"Plugin 'michalliu/sourcebeautify.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-bundler'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'moll/vim-node'
Plugin 'mattn/webapi-vim'
Plugin 'pasela/ctrlp-cdnjs'
Plugin 'whatyouhide/vim-gotham'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'SirVer/ultisnips'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-endwise'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'sjl/gundo.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-ruby/vim-ruby'
" " My Plugins
" Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'vcscommand.vim'
Plugin 'docteurklein/vim-symfony'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/powerline'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'majutsushi/tagbar'
Plugin 'vim-php/tagbar-phpctags.vim'
Plugin 'Lokaltog/powerline-fonts'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'mattn/emmet-vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'tpope/vim-surround'
Plugin 'matchit.zip'
Plugin 'sudo.vim'
Plugin 'evidens/vim-twig'
"Plugin 'msanders/snipmate.vim'
Plugin 'honza/vim-snippets'
Plugin 'netrw.vim' 
Plugin 'godlygeek/tabular' 
"Plugin 'tobyS/pdv'
"Plugin 'tobyS/vmustache'
" Plugin 'kana/vim-textobj-user'
" Plugin 'nelstrom/vim-textobj-rubyblock'
" Plugin 'slim-template/vim-slim'
"

call vundle#end()
filetype plugin indent on
"
" let mapleader=","
"
color jellybeans
"
set cursorline
set expandtab
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set tabstop=2
set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color
set termencoding=utf-8
let g:tagbar_phpctags_memory_limit = '512M'

let php_sql_query=1
let php_htmlInStrings=1
let php_noShortTags=1
let php_folding=1
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l

set background=dark
"colorscheme solarized
"colorscheme gotham
colorscheme railscasts
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2


let g:EasyMotion_do_mapping = 1 " Disable default mappings

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
"nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
"let g:EasyMotion_smartcase = 1

" JK motions: Line motions

"map <Leader>k <Plug>(easymotion-k)

"let g:pdv_template_dir = $HOME . "/.vim/bundle/pdv/templates_snip"
"nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<C-t>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

"
" " Automatic formatting
" autocmd BufWritePre *.rb :%s/\s\+$//e
" autocmd BufWritePre *.go :%s/\s\+$//e
" autocmd BufWritePre *.haml :%s/\s\+$//e
" autocmd BufWritePre *.html :%s/\s\+$//e
" autocmd BufWritePre *.scss :%s/\s\+$//e
" autocmd BufWritePre *.slim :%s/\s\+$//e
"
" au BufNewFile * set noeol
" au BufRead,BufNewFile *.go set filetype=go
"
" " No show command
" autocmd VimEnter * set nosc
"
" " Quick ESC
" imap jj <ESC>
"
" " Jump to the next row on long lines
" map <Down> gj
" map <Up>   gk
" nnoremap j gj
" nnoremap k gk

"map <c-f> :call JsBeautify()<cr>
" or
"      autocmd FileType javascript noremap <buffer>  <c-f> :call
"JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

map <leader>w <C-w>w
map <leader>v <C-w>v
map <leader>s <C-w>s
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l
inoremap <C-space> <C-x><C-o>
nnoremap <leader>q :q<cr>
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader>o :CtrlP ./<cr>
nnoremap <leader>t :NERDTreeToggle ./<cr>

" cdnjs
noremap <leader>js :<c-u>CtrlPCdnJs<cr>
" buat javascript tag
nnoremap <leader>] :tag /<c-r>=expand('<cword>')<CR><CR>

"
" " format the entire file
" nmap <leader>fef ggVG=
nmap <F8> :TagbarToggle<CR>
"
" " Open new buffers
" nmap <leader>s<left>   :leftabove  vnew<cr>
" nmap <leader>s<right>  :rightbelow vnew<cr>
" nmap <leader>s<up>     :leftabove  new<cr>
" nmap <leader>s<down>   :rightbelow new<cr>
"
" " Tab between buffers
" noremap <tab> <c-w><c-w>
"
" " Switch between last two buffers
" nnoremap <leader><leader> <C-^>
"
" " Resize buffers
" if bufwinnr(1)
"   nmap Ä <C-W><<C-W><
"     nmap Ö <C-W>><C-W>>
"       nmap ö <C-W>-<C-W>-
"         nmap ä <C-W>+<C-W>+
"         endif
"
"         " NERDTree
"         nmap <leader>n :NERDTreeToggle<CR>
"         let NERDTreeHighlightCursorline=1
"         let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']
"
"         " Syntastic
"         let g:syntastic_mode_map = { 'mode': 'passive' }
"         let g:syntastic_ruby_exec = '~/.rvm/rubies/ruby-2.0.0-p0/bin/ruby'
"
"         " CtrlP
"         nnoremap <silent> t :CtrlP<cr>
"         let g:ctrlp_working_path_mode = 2
"         let g:ctrlp_by_filename = 1
"         let g:ctrlp_max_files = 600
"         let g:ctrlp_max_depth = 5
"
"         " Go programming
"         set rtp+=/usr/local/Cellar/go/1.0.3/misc/vim
"
"         " Quit with :Q
"         command -nargs=0 Quit :qa!

" MacVim GUI mode
 if has("gui_macvim")
   set guifont=Monaco:h13
     set guioptions=aAce
       set fuoptions=maxvert,maxhorz
         set noballooneval

           " resize current buffer by +/- 5
             nnoremap <M-Right> :vertical resize +5<CR>
             nnoremap <M-Left>  :vertical resize -5<CR>
             nnoremap <M-Up>    :resize -5<CR>
             nnoremap <M-Down>  :resize +5<CR>

"                     " Command+Option+Right for next
                       map <D-M-Right> :tabn<CR>
                         " Command+Option+Left for previous
                           map <D-M-Left> :tabp<CR>
"
"                             " Automatically resize splits
"                               " when resizing MacVim window
                                 autocmd VimResized * wincmd =
                                 let s:uname = system("uname")
                                    if s:uname == "Darwin\n"
                                            set guifont=Inconsolata\ for\ Powerline:h15
                                               endif
                                 endif
set wrap
set linebreak

