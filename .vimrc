" ██▒   █▓ ██▓ ███▄ ▄███▓ ██▀███   ▄████▄  
"▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓██ ▒ ██▒▒██▀ ▀█  
" ▓██  █▒░▒██▒▓██    ▓██░▓██ ░▄█ ▒▒▓█    ▄ 
"  ▒██ █░░░██░▒██    ▒██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
"   ▒▀█░  ░██░▒██▒   ░██▒░██▓ ▒██▒▒ ▓███▀ ░
"   ░ ▐░  ░▓  ░ ▒░   ░  ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░
"   ░ ░░   ▒ ░░  ░      ░  ░▒ ░ ▒░  ░  ▒   
"     ░░   ▒ ░░      ░     ░░   ░ ░        
"      ░   ░         ░      ░     ░ ░      
"     ░                           ░ 


syntax enable

colorscheme molokai

"tabs config
set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 "number of spaces in tab when editing
set expandtab "tabs are spaces


"ui config
set number "show line numbers
set showcmd "show cmmand in the bottom bar
set showmatch
set nowrap
filetype indent on

au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja

autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType python setlocal ts=4 sts=4 sw=4
autocmd FileType jinja setlocal ts=2 sts=2 sw=2

execute pathogen#infect()

let g:airline_theme='deus' "set airline theme
let g:airline_powerline_fonts = 1 "enable powerline symbols

map nerdtreetoggle to ctrl+n
map <C-n> :NERDTreeToggle<CR> 
"move between splits with just ctrl+{jkl;} instead of ctrl+w {jkl;}
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>







