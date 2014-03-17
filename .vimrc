" AUTHOR:  Yonghao Yu
" EMAIL:   <yyhao1@gmail.com>
" DATE:    March  11, 2014
set runtimepath=~/.vim,/etc/vim,/usr/share/vim/vimfiles,/usr/share/vim/addons,/usr/share/vim/vim74,/usr/share/vim/vimfiles,/usr/share/vim/addons/after,~/.vim/after
colorscheme candycode
set modelines=0
"indent
set cindent
set shiftround
set autoindent
set pastetoggle=<F11> 
"Get out of VI's compatible mode..
set nocompatible
syntax on          " enable syntax highlighting
set title          " set title to filename and modification status
set ruler          " always show current position
set ttyfast
set backspace=2    " allow backspacing over everything in insert mode 
set showcmd        " always show the command being typed
set showmode       " show current mode
set cmdheight=2
set nobackup
set ignorecase
set ts=4
set number
set mouse=a
set updatetime=30000
set swapsync=""
set showmatch
"Sets how many lines of history VIM har to remember
set history=100

"filetype on            " enables filetype detection
"filetype plugin on     " enables filetype specific plugins
"Auto read a file when it has been changed by other program
set autoread

filetype off
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'tpope/vim-sensible'
Bundle 'taglist.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'The-NERD-tree'
Bundle 'Command-T'
Bundle 'pyflakes'
Bundle 'Pydiction'
Bundle 'Tagbar'
Bundle 'vim-scripts/UltiSnips'
Bundle 'kien/ctrlp.vim'
Bundle 'SuperTab'
Bundle 'javacomplete'
Bundle 'pythoncomplete'
Bundle 'htmlcomplete'
Bundle 'csscomplete'
Bundle 'xolox/vim-easytags' 
Bundle 'xolox/vim-misc'
Bundle 'tpope/vim-surround'
filetype plugin indent on
let mapleader=","

inoremap <leader>1 ()<esc>:let leavechar=")"<cr>i
inoremap <leader>2 []<esc>:let leavechar="]"<cr>i
inoremap <leader>3 {}<esc>:let leavechar="}"<cr>i
inoremap <leader>4 {<esc>o}<esc>:let leavechar="}"<cr>i
inoremap <leader>q ''<esc>:let leavechar="'"<cr>i
inoremap <leader>w ""<esc>:let leavechar='"'<cr>i

"pydirection
let g:pydiction_location = '/Users/yu/.vim/bundle/Pydiction/complete-dict' 
"easytag
let g:easytags_updatetime_min=30000

" UltiSnips'
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"tagbar
let g:tagbar_usearrows = 1 

"ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,                    "MacOSX/Linux
set wildignore+=tmp\*,*.swp,*.zip,*.exe                      " Windows
set wildignore+=*.avi,*.mpg,*.flv,*.ogv,*.AVI                " Videos
set wildignore+=*.jpg,*.png,*.gif,*.JPG,*.GIF                " Images
set wildignore+=*.mp3,*.flac,*.ogg,*.wav,*.WAV,*.MP3,*.FLAC  " Audio/Music
set wildignore+=*.zip,*.rar,*.ZIP,*.cbz,*.cbr,*.tar.gz,*.tar " Archive
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|site-packages)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
let g:ctrlp_cmd = 'CtrlPMixed'
"let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_cmd = 'CtrlPMRU'
"omni-complete
set completeopt=longest,menu
"自动补全命令时候使用菜单式匹配列表  
set wildmenu
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete

"Tlist
let Tlist_Show_one_File=0
let Tlist_File_fold_Auto_CLose=1
let Tlist_Use_SingleClick=1
let Tlist_GainFocus_On_ToggleOpen=1
"nerdTree and tagbar
let NERDTreeShowBookmarks = 1
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <S-t> :TagbarToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=1
let NERDTreeDirArrows=1
let NERDTreeChDirMode=2

"taglist
let Tlist_WinWidth=10
let Tlist_Auto_Open=0
let Tlist_Use_SingleClick=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Enable_Fold_Column=1

" move between functions with Tab/Shift+Tab in normal mode
nmap <silent> <Tab> :silent! normal ]]<CR>
nmap <silent> <S-Tab> :silent! normal [[<CR>

" CUSTOM FILETYPE INDENTING {{{ 
autocmd FileType alsaconf,asm,autoit,context,css,dot,eruby,html,io,javascript,lisp,markdown,ocaml,perl,php,smarty,sql,plaintex,ruby,sh,svn,tex,textile,vb,vim,xhtml,xml,xslt setlocal ts=2 sts=2 sw=2 expandtab nocindent
autocmd FileType c,cs,cpp,php setlocal ts=3 sts=3 sw=3 expandtab
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType apache setlocal ts=4 sts=4 sw=4
autocmd FileType mail setlocal ts=2 sts=2 sw=2 expandtab tw=80 lbr
autocmd FileType tex,plaintex,context setlocal lbr
autocmd FileType ruby compiler ruby | setlocal makeprg=ruby\ -c\ %
autocmd BufEnter /home/*/bin/*.run setf sh
autocmd BufEnter *.inc,*.thtml setf php
autocmd BufEnter *.boo setf python
autocmd BufEnter *.io setf io
autocmd BufEnter *.red setf textile
autocmd BufEnter *.plan setf ruby
autocmd BufEnter ~/.devilspie/* setf lisp

" Normally we use vim-extensions. If you want true vi-compatibility
" " remove change the following statements
set nocompatible        " Use Vim defaults instead of 100% vi compatibility
set backspace=2         " more powerful backspacing
" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

