let mapleader =","

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif


call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'mattn/emmet-vim'
"Plug 'Valloric/YouCompleteMe'
call plug#end()

"basics:
set number relativenumber
syntax on
set encoding=utf-8
filetype plugin on
set nobackup

"speed up global substitution
nnoremap S :%s//g<Left><Left>

"cursorline and cursorcolumn
"set termguicolors
set cursorline
set cursorcolumn
highlight CursorLine ctermbg=238 cterm=bold guibg=Grey40
highlight CursorColumn ctermbg=238 cterm=bold guibg=Grey40
nnoremap H :set cursorline! cursorcolumn!<CR>

"case-sensitivity
set ignorecase
set smartcase

"autocenter on insertmode
autocmd InsertEnter * norm zz

"vim clipboard = os clipboard
set clipboard+=unnamed

"splits open at bottom and right
set splitbelow splitright

"remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

"enable autocompletion
set wildmode =longest,list,full

"go to jumppoint <++>
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l

"movement
nnoremap W 5w
nnoremap B 5b
nnoremap <c-j> <c-d>
nnoremap <c-k> <c-u>

"compensate missing esckey on keyboard and make it more ergonomic at the same time
imap jj <Esc>

"indentation
set shiftwidth=4
set autoindent
set expandtab
set tabstop=4

"autoload .Xresources on save
autocmd BufWritePost *Xresources !xrdb -merge ~/.Xresources

"Update binds when sxhkdrx is updated
autocmd BufWritePost *sxhkdrc !killall sxhkd; setsid sxhkd &

map <leader>c :w! \| !comp <c-r>%<CR><CR>
map <leader>o :w! \| !opout <c-r>%<CR><CR>

"python shortcuts
autocmd FileType python inoremap -d def():<Enter><Tab><++><Esc>k0f(i<Space>
autocmd FileType python inoremap -t try:<Enter>except<Space><++>:<Enter><Tab><++><Esc>kO<Tab>
autocmd FileType python inoremap -p print()<Esc>i
autocmd FileType python inoremap -2 print("")<Esc>hi
autocmd FileType python inoremap -f for :<Enter><Tab><++><Esc>k$i
autocmd FileType python inoremap -i if :<Enter><Tab><++><Esc>k$i

autocmd BufWritePost ~/.local/src/dwm/dwmblocks/blocks.h !cd ~/.local/src/dwm/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
"autocmd BufWritePost *dwm/dwm*/config.h !make -C ~/.local/dwm/dwm* && sudo -S make clean install

"LaTeX stuff /* vim: set filetype=latex : */
autocmd BufWritePost *.tex !latexmk -pdf %
autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd FileType tex inoremap -n \documentclass{}<Enter><Enter>\begin{document}<Enter><Enter>\title{<++>}<Enter>\author{<++>}<Enter>\date{<++>}<Enter>\maketitle<Enter><Enter><++><Enter><Enter>\end{document}<Esc>kkkkkkkkkkk0f{a
autocmd FileType tex inoremap -s \section{}<Esc>i
autocmd FileType tex inoremap -y \subsection{}<Esc>i
autocmd FileType tex inoremap -x \subsubsection{}<Esc>i
autocmd FileType tex inoremap -p \paragraph{}<Esc>i
autocmd FileType tex inoremap -l \subparagraph{}<Esc>i
autocmd FileType tex inoremap -i \tableofcontents
autocmd FileType tex inoremap -c \clearpage
autocmd FileType tex inoremap -q ,,''<Esc>hi
autocmd FileType tex inoremap -r \textsubscript{}<Esc>i
autocmd FileType tex inoremap -h \textsuperscript{}<Esc>i
autocmd FileType tex inoremap -e \emph{}<Esc>i
autocmd FileType tex inoremap -c \color{}<Esc>i
autocmd FileType tex inoremap -b \textbf{}<Esc>i
autocmd FileType tex inoremap -i \textit{}<Esc>i