"                                                      *
"                            _____ _    _              *
"_ __   __ ___      ___ __ | ____| | _| | _____        *
"| '_ \ / _` \ \ /\ / / '_ \|  _| | |/ / |/ / _ \      *
"| |_) | (_| |\ V  V /| | | | |___|   <|   < (_) |     *
"| .__/ \__,_| \_/\_/ |_| |_|_____|_|\_\_|\_\___/      *        
"|_|                                                   *                     
"*******************************************************

"----------------
"||配置文件说明||
"----------------
"此配置文件为neovim的配置文件------linux系统下---(pawnekko为用户名)
"与 vim 的配置文件 .vimrc 不同，此文件应放置在/home/pawnekko/.config/nvim中，且命名为 init.vim
"首先在安装插件的目录下安装插件管理工具
"插件管理工具:(以下链接需删除注释后进行完整复制，两行链接是一个整体)
"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"插件安装在：/home/pawnekko/.local/share/nvim/Plugged 文件夹 如果没有需要创建
"figlet (头部大字快捷键)需要先在终端安装figlet插件
"=========================================配置文件结束==========================================


"插件管理
set nocompatible 
filetype off
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'alvan/vim-closetag'
Plug 'dense-analysis/ale'
Plug 'MaraniMatias/vue-formatter'
Plug 'numirias/semshi'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline'
Plug 'w0ng/vim-hybrid'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
call plug#end()
filetype plugin indent on
"插件管理结束

"快捷键映射
inoremap jj <Esc>`^
map <C-k> <leader>ci
map N :set splitright<CR>:vsplit<CR>
map tt :NERDTreeMirror<CR>
map tt :NERDTreeToggle<CR>
map <F7> :tabnew<cr>
map C :tabclose
map tb :-tabnext<CR>
map tn :+tabnext<CR>
map tx :r !figlet 
map <F5> :terminal<cr>
"快捷键映射结束

"基本设置
colorscheme hybrid
set number
set shortmess=atI
syntax on
set nobackup
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set showmatch 
set fdm=syntax
set encoding=utf-8
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set scrolloff=5
set backspace=indent,eol,start
set guioptions-=m
set guioptions-=T
set autochdir
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='simple'
let &t_ut=''
set gcr=a:blinkon1
"VUE 开发的 缩进调节  在不开发 Vue 时需注释
au BufNewFile,BufRead *.html,*.js,*.vue set tabstop=2
au BufNewFile,BufRead *.html,*.js,*.vue set softtabstop=2
au BufNewFile,BufRead *.html,*.js,*.vue set shiftwidth=2
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
autocmd FileType vue syntax sync fromstart
autocmd FileType vue noremap <buffer> <F2> :%!vue-formatter<CR>     "vue 代码格式化插件



