"  VIM配置文件
"
"  author: hap <ThinkHap@qq.com>
" website: http://www.thinkhap.com
"    date: 2013-08-21


if v:version < 700
    echoerr 'This _vimrc requires Vim 7 or later.'
    quit
endif

set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


" 获取当前目录
func! GetPWD()
    return substitute(getcwd(), "", "", "g")
endf

" 跳过页头注释，到首行实际代码
func! GotoFirstEffectiveLine()
    let l:c = 0
    while l:c<line("$") && (
                \ getline(l:c) =~ '^\s*$'
                \ || synIDattr(synID(l:c, 1, 0), "name") =~ ".*Comment.*"
                \ || synIDattr(synID(l:c, 1, 0), "name") =~ ".*PreProc$"
                \ )
        let l:c = l:c+1
    endwhile
    exe "normal ".l:c."Gz\<CR>"
endf

" 匹配配对的字符
func! MatchingQuotes()
    inoremap ( ()<left>
    inoremap [ []<left>
    inoremap { {}<left>
    inoremap " ""<left>
    inoremap ' ''<left>
endf

" 返回当前时期
func! GetDateStamp()
    return strftime('%Y-%m-%d')
endf

" 全选
func! SelectAll()
    let s:current = line('.')
    exe "norm gg" . (&slm == "" ? "VG" : "gH\<C-O>G")
endf

" From an idea by Michael Naumann
func! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunc


" ============
" Environment
" ============
" 保留历史记录
set history=1000

" 行控制
set linebreak
set nocompatible
set textwidth=0
set wrap
set fo+=mB

" 标签页
set tabpagemax=19
set showtabline=2

" 控制台响铃
set noerrorbells
set novisualbell
set t_vb= "close visual bell

" 行号和标尺
set number
set ruler
set rulerformat=%15(%c%V\ %p%%%)

" 命令行于状态行
set ch=1
set stl=\ [File]\ %F%m%r%h%y[%{&fileformat},%{&fileencoding}]\ %w\ \ [PWD]\ %r%{GetPWD()}%h\ %=\ [Line]%l/%L\ %=\[%P]
set ls=2 " 始终显示状态行
set wildmenu "命令行补全以增强模式运行

" 定义 <Leader> 为逗号
let mapleader = ","
let maplocalleader = ","

" Search Option
set hlsearch  " Highlight search things
set magic     " Set magic on, for regular expressions
set showmatch " Show matching bracets when text indicator is over them
set mat=2     " How many tenths of a second to blink
set noincsearch

" 制表符
set tabstop=4
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

" 状态栏显示目前所执行的指令
set showcmd 

" 缩进
set autoindent
set smartindent

" 自动重新读入
set autoread

" 插入模式下使用 <BS>、<Del> <C-W> <C-U>
set backspace=indent,eol,start

" 设定在任何模式下鼠标都可用
set mouse=a

" 自动改变当前目录
if has('netbeans_intg')
    set autochdir
endif

" 备份和缓存
set nobackup
set noswapfile
"set backupdir=$vim/backup

" 自动完成
set complete=.,w,b,k,t,i
set completeopt=longest,menu

" 代码折叠
set foldmethod=indent

" =====================
" 多语言环境
"    默认为 UTF-8 编码
" =====================
if has("multi_byte")
    set encoding=utf-8  "utf-8
    set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
    "English messages only
    "language messages zh_CN.utf-8

    " 解决菜单乱码
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    
    if has('win32')
        language chinese
        let &termencoding=&encoding
    endif

    "set fencs=gbk,chinese,latin1
    set formatoptions+=mM
    set nobomb " 不使用 Unicode 签名

    if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
        set ambiwidth=double
    endif
else
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

" 永久撤销，Vim7.3 新特性
if has('persistent_undo')
    set undofile

    " 设置撤销文件的存放的目录
    if has("unix")
        set undodir=/tmp/,~/tmp,~/Temp
    else
        set undodir=d:/temp/
    endif
    set undolevels=1000
    set undoreload=10000
endif

" Diff 模式的时候鼠标同步滚动 for Vim7.3
if has('cursorbind')
    set cursorbind
end


" =========
" AutoCmd
" =========
if has("autocmd")
    filetype plugin indent on

    " 括号自动补全
    func! AutoClose()
        :inoremap ( ()<ESC>i
        :inoremap " ""<ESC>i
        :inoremap ' ''<ESC>i
        :inoremap { {}<ESC>i
        :inoremap [ []<ESC>i
        :inoremap ) <c-r>=ClosePair(')')<CR>
        :inoremap } <c-r>=ClosePair('}')<CR>
        :inoremap ] <c-r>=ClosePair(']')<CR>
    endf

    func! ClosePair(char)
        if getline('.')[col('.') - 1] == a:char
            return "\<Right>"
        else
            return a:char
        endif
    endf

    augroup vimrcEx
        au!
        "autocmd FileType text setlocal textwidth=80
        autocmd BufReadPost *
                    \ if line("'\"") > 0 && line("'\"") <= line("$") |
                    \   exe "normal g`\"" |
                    \ endif
    augroup END

    " Auto close quotation marks for PHP, Javascript, etc, file

    " Auto Check Syntax

    " JavaScript 语法高亮
    au FileType html,javascript let g:javascript_enable_domhtmlcss = 1
    "au BufRead,BufNewFile *.js setf jquery

    " 给各语言文件添加 Dict
    if has('win32')
        let s:dict_dir = $VIM.'\vimfiles\dict\'
    else
        let s:dict_dir = $HOME."/.vim/dict/"
    endif
    let s:dict_dir = "setlocal dict+=".s:dict_dir

    "au FileType php exec s:dict_dir."php_funclist.dict"
    "au FileType css exec s:dict_dir."css.dict"
    "au FileType javascript exec s:dict_dir."javascript.dict"

    " 格式化 JavaScript 文件
    au FileType javascript map <f12> :call g:Jsbeautify()<cr>
    au FileType javascript set omnifunc=javascriptcomplete#CompleteJS

    " 增加 ActionScript 语法支持
    au BufNewFile,BufRead,BufEnter,WinEnter,FileType *.as setf actionscript 

    " CSS3 语法支持
    au BufRead,BufNewFile *.css set ft=css syntax=css3

    " 增加 Objective-C 语法支持
    au BufNewFile,BufRead,BufEnter,WinEnter,FileType *.m,*.h setf objc

    " 将指定文件的换行符转换成 UNIX 格式
    "au FileType php,javascript,html,css,python,vim,vimwiki set ff=unix

    " 保存编辑状态
    au BufWinLeave * if expand('%') != '' && &buftype == '' | mkview | endif
    au BufRead     * if expand('%') != '' && &buftype == '' | silent loadview | syntax on | endif
endif



" =========
" GUI
" =========
if has('gui_running')
    " 只显示菜单
    set guioptions=mcr

    " 高亮光标所在的行
    set cursorline

    if has("win32")
        " Windows 兼容配置
        source $VIMRUNTIME/mswin.vim

        " f11 最大化
        nmap <f11> :call libcallnr('fullscreen.dll', 'ToggleFullScreen', 0)<cr>
        nmap <Leader>ff :call libcallnr('fullscreen.dll', 'ToggleFullScreen', 0)<cr>

        " 自动最大化窗口
        "au GUIEnter * simalt ~x

        "Font 12
        "set columns=80 "初始窗口宽度
        "set lines=43  "初始窗口高度
        "winpos 1000 0  "初始化窗口位

        "Font 11
        set columns=100 "初始窗口宽度
        set lines=52  "初始窗口高度
        winpos 900 0  "初始化窗口位

        "Font 10
        "set columns=110 "初始窗口宽度
        "set lines=52  "初始窗口高度
        "winpos 900 0  "初始化窗口位

        " 给 Win32 下的 gVim 窗口设置透明度
        au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 235)

        " 字体配置   "设置字体为YaHei\Consolas 字号12号
        exec 'set gfn=YaHei\ Consolas\ Hybrid:h11' 
    endif

    " Under Mac
    if has("mac") || has("gui_macvim")
        " MacVim 下的字体配置
        set guifont=Courier_New:h12
        set guifontwide=YouYuan:h12

        " 半透明和窗口大小
        set transparency=2
        set lines=200 columns=120

        " 使用 MacVim 原生的全屏幕功能
        let s:lines=&lines
        let s:columns=&columns

        func! FullScreenEnter()
            set lines=999 columns=999
            set fu
        endf

        func! FullScreenLeave()
            let &lines=s:lines
            let &columns=s:columns
            set nofu
        endf

        func! FullScreenToggle()
            if &fullscreen
                call FullScreenLeave()
            else
                call FullScreenEnter()
            endif
        endf

        set guioptions+=e
        " Mac 下，按 <Leader>ff 切换全屏
        nmap <f11> :call FullScreenToggle()<cr>
        nmap <Leader>ff  :call FullScreenToggle()<cr>

        " I like TCSH :^)
        set shell=/bin/tcsh

        " Set input method off
        set imdisable

        " Set QuickTemplatePath
        let g:QuickTemplatePath = $HOME.'/vimfile/templates/'

        " 如果为空文件，则自动设置当前目录为桌面
        " lcd ~/Desktop/
    endif

    " Under Linux/Unix etc.
    if has("unix") && !has('gui_macvim')
        set guifont=Courier\ 10\ Pitch\ 11
    endif
endif



" =================
" Plugin Configure
" =================
" Javascript in CheckSyntax
if has('win32')
    let g:checksyntax_cmd_javascript  = 'jsl -conf '.shellescape($VIM . '\vimfiles\plugin\jsl.conf')
else
    let g:checksyntax_cmd_javascript  = 'jsl -conf ~/.vim/plugin/jsl.conf'
endif
let g:checksyntax_cmd_javascript .= ' -nofilelisting -nocontext -nosummary -nologo -process'

" VIM HTML 插件
let g:no_html_toolbar = 'yes'

" Don't display NERDComment Menu.
let g:NERDMenuMode = 0

" VimWiki 配置
if !exists("g:vimwiki_list")
    let g:vimwiki_list = [
                \{"path": "~/Wiki/Default/", "path_html": "~/Sites/wiki/",  
                \   "html_footer": "~/Wiki/Default/footer.tpl", "html_header": "~/Wiki/Default/header.tpl",
                \   "auto_export": 1}
                \]
    let g:vimwiki_auto_checkbox = 0
    if has('win32')
        " 注意！
        " 1、如果在 Windows 下，盘符必须大写
        " 2、路径末尾最好加上目录分隔符
        let s:vimwiki_root = "d:/My Documents/My Dropbox/Vimwiki"
        let g:vimwiki_list = [
                    \{"path": s:vimwiki_root."/Default/", 
                    \   "html_footer": s:vimwiki_root."/Default/footer.tpl", 
                    \   "html_header": s:vimwiki_root."/Default/header.tpl",
                    \   "path_html": s:vimwiki_root."/Default/_output/", "auto_export": 1}
                    \]
        let g:vimwiki_w32_dir_enc = 'cp936'
    endif

    au FileType vimwiki set ff=unix fenc=utf8 noswapfile nobackup
    "au FileType vimwiki imap <C-t> <c-r>=TriggerSnippet()<cr>

    nmap <C-i><C-i> :VimwikiTabGoHome<cr>
    "nmap <Leader>ii :VimwikiTabGoHome<cr>
endif

" 不要显示 VimWiki 菜单
let g:vimwiki_menu = ""

" on Windows, default charset is gbk
"if has("win32")
"    let g:fontsize#encoding = "cp936"
"endif

" don't let NERD* plugin add to the menu
let g:NERDMenuMode = 0

" =============
" Color Scheme
" =============
if has('syntax')
    "if has('gui_running')
    "    set background=light
    "else
    "    set background=dark
    "endif

    " http://ethanschoonover.com/solarized
    ""colorscheme solarized

    colorscheme desertEx

    " 默认编辑器配色
    "au BufNewFile,BufRead,BufEnter,WinEnter * colo moria

    " 各不同类型的文件配色不同
    "au BufNewFile,BufRead,BufEnter,WinEnter *.wiki colo moria

    " 保证语法高亮
    syntax enable
    syntax on
endif






" =============
" Key Shortcut
" =============

" Convert fileencoding
nmap <leader>gbk :set fenc=gbk<cr>:w<cr>
nmap <leader>utf :set fenc=utf-8<cr>:w<cr>

" NERD_tree
nmap <F9> :NERDTreeToggle<cr>
let NERDTreeQuitOnOpen=1

" 打开系统的hosts文件
map <silent> <leader>eh :tabe C:\Windows\System32\drivers\etc\hosts<cr>
" 修改hosts文件后直接清除系统的dns缓存
autocmd! bufwritepost hosts :silent !start cmd /C ipconfig /flushdns

" Edit _vimrc
map <silent> <leader>vim :tabe D:\Program Files\Vim\_vimrc<cr>

" When _vimrc is edited, reload it.
" autocmd! bufwritepost _vimrc source D:\Program Files\Vim\_vimrc

" 如果你没有自定义过<leader>，那么下面的语句，表示的就是当你依次按下"\","g","i","t"这4个键时，熟悉的Git Bash窗口就会打开了！
nmap <silent> <leader>git :!start cmd /C ""sh" --login -i"<cr>


nmap <C-t>   :tabnew<cr>
nmap <C-p>   :tabprevious<cr>
nmap <C-n>   :tabnext<cr>
nmap <C-k>   :tabclose<cr>
nmap <C-Tab> :tabnext<cr> 

" insert mode shortcut
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <Delete>

"for i in range(1, &tabpagemax)
"    exec 'nmap <A-'.i.'> '.i.'gt'
"endfor

" 插件快捷键
"nmap <f9> :NERDTree<cr>
nmap <f9> :NERDTree<cr>

"nmap <f2> :BufExplorer<cr>
nmap <f2>  :BufExplorer<cr>

"nmap <f4> :JSLint
nmap <f4>  :JSLintToggle<cr>

" 插入模式按 F4 插入当前时间
imap <f4> <C-r>=GetDateStamp()<cr>

" 新建 XHTML 、PHP、Javascript 文件的快捷键
nmap <C-c><C-h> :NewQuickTemplateTab xhtml<cr>
nmap <C-c><C-x> :NewQuickTemplateTab xhtml-01<cr>
nmap <C-c><C-p> :NewQuickTemplateTab php<cr>
nmap <C-c><C-j> :NewQuickTemplateTab javascript<cr>
nmap <C-c><C-c> :NewQuickTemplateTab css<cr>
nmap <Leader>ca :Calendar<cr>
nmap <Leader>mr :MRU<cr>
nmap <Leader>dd :NERDTree<cr>
nmap <Leader>bf :BufExplorer<cr>

" 直接查看第一行生效的代码
nmap <C-g><C-f> :call GotoFirstEffectiveLine()<cr>

" 按下 Q 不进入 Ex 模式，而是退出
nmap Q :x<cr>

