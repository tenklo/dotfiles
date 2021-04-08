"normal nvim stuff
let mapleader =","

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'vimwiki/vimwiki'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
" Themes
Plug 'jam1garner/vim-code-monokai'
Plug 'vim-airline/vim-airline'
" comments, tags
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" filetype related plugins
Plug 'Yggdroot/indentLine'
call plug#end()

let g:vimwiki_list = [{'path': '~/Nextcloud/vimwiki/'}]

"basics:
set number relativenumber
syntax on
set encoding=utf-8
filetype plugin on
set nobackup
set title
set mouse=a

" open as pdf
" map <leader>p <esc>:w !pandoc -f markdown \| zathura -<enter>
command! Pdf execute "w !pandoc -f markdown -t pdf | zathura -"
" command! Pdf execute "w !pandoc -f markdown -t pdf --template eisvogel | zathura -"


"speed up global substitution
nnoremap S :%s//g<Left><Left>

"open terminal here
nnoremap <c-t> :!openterminalat %:p:h<Enter><Enter>

"cursorline and cursorcolumn
set cursorline
"set cursorcolumn
"highlight CursorLine ctermbg=238 cterm=bold guibg=Grey40
"highlight CursorColumn ctermbg=238 cterm=bold guibg=Grey40
nnoremap H :set cursorline! cursorcolumn!<CR>

"themes
set termguicolors
colorscheme codedark
let g:airline_theme = 'codedark'
hi Normal guifg=#FFFFFF guibg=NONE ctermbg=none

nnoremap <c-H> :nohlsearch<CR>

"case-sensitivity
set ignorecase
set smartcase

" split navigation
map <A-h> <C-w>h
map <A-j> <C-w>j
map <A-k> <C-w>k
map <A-l> <C-w>l

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

" goto and create jumppoints
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
inoremap <leader>. <++>

"movement
nnoremap W 5w
nnoremap B 5b
nnoremap <c-j> <c-d>
nnoremap <c-k> <c-u>

"compensate missing esckey on keyboard and make it more ergonomic at the same time
" imap jj <Esc>

"indentation
set shiftwidth=4
set autoindent
set expandtab
set tabstop=4
set softtabstop=4

"indenting
vmap < <gv
vmap > >gv

"autoload .Xresources on save
autocmd BufWritePost *xresources !xrdb -merge ~/.config/X11/xresources

"Update binds when sxhkdrx is updated; there are bugs, so for now doing it
"manually
" autocmd BufWritePost *sxhkdrc :!killall sxhkd<Enter> :call jobstart('{sxhkd}')
" autocmd BufWritePost *sxhkdrc !killall sxhkd; setsid sxhkd &

"Update shortcuts when shortcutsfile is updated
autocmd BufWritePre *local/share/data/shortcuts :%sort
autocmd BufWritePost *local/share/data/shortcuts  !shortcut-sync

"sort bookmarks on save
autocmd BufWritePre *local/share/data/bookmarks :%sort

"sort configfiles on save
autocmd BufWritePre *local/share/data/configfiles :%sort

"sort serverlist on save
autocmd BufWritePre *local/share/data/serverliste :%sort

"sort engines on save
autocmd BufWritePre *local/share/data/engines :%sort

map <leader>c :w! \| !comp <c-r>%<CR><CR>
map <leader>o :w! \| !opout <c-r>%<CR><CR>

"reload dwmblocks on save
autocmd BufWritePost ~/.local/src/dwmblocks/blocks.h !cd ~/.local/src/dwmblocks/; sudo make install && killall -q dwmblocks;setsid dwmblocks

"Plugin stuff

" ------Vim Auto Closetag------
  " filenames like *.xml, *.html, *.xhtml, ...
  " These are the file extensions where this plugin is enabled.
  let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.js,*.tsx'

  " filenames like *.xml, *.xhtml, ...
  " This will make the list of non-closing tags self-closing in the specified files.
  let g:closetag_xhtml_filenames = '*.xml,*.xhtml,*.jsx,*.js,*.tsx'

  " filetypes like xml, html, xhtml, ...
  " These are the file types where this plugin is enabled.
  let g:closetag_filetypes = 'html,xhtml,jsx,js,tsx'

  " filetypes like xml, xhtml, ...
  " This will make the list of non-closing tags self-closing in the specified files.
  let g:closetag_xhtml_filetypes = 'xml,xhtml,jsx,js,tsx'

  " integer value [0|1]
  " This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
  let g:closetag_emptyTags_caseSensitive = 1

  " Disables auto-close if not in a "valid" region (based on filetype)
  let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion',
      \ 'javascript.jsx': 'jsxRegion',
      \ }

  " Shortcut for closing tags, default is '>'
  let g:closetag_shortcut = '>'

  " Add > at current position without closing the current tag, default is ''
  let g:closetag_close_shortcut = '<leader>>'

  " Vim Hexokinase
  let g:Hexokinase_refreshEvents = ['InsertLeave']

  let g:Hexokinase_optInPatterns = [
  \     'full_hex',
  \     'triple_hex',
  \     'rgb',
  \     'rgba',
  \     'hsl',
  \     'hsla',
  \     'colour_names'
  \ ]

  let g:Hexokinase_highlighters = ['backgroundfull']

  " Reenable hexokinase on enter
  autocmd VimEnter * HexokinaseTurnOn

" indentLine plugin

let g:indentLine_fileTypeExclude = ["vimwiki", "help"]
let g:indentLine_bufTypeExclude = ["help", "terminal"]

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = "."
