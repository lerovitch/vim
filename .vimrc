" installing python-mode
" Pathogen load
"filetype off

call pathogen#infect()
"call pathogen#helptags()
syntax on 

"syntax enable
set background=light
set wildignore+=*.pyc
set tags=.tags
set vb
" Turn on line numbers:
set number
" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
" activate file detection to a suitable plugin file and indent plugin file
filetype plugin indent on
"Vim will switch to paste mode, disabling all kinds of smartness and just pasting a whole buffer of text
set pastetoggle=<F2>
" Taglist
" "
let Tlist_Enable_Fold_Column = 0
let Tlist_Compact_Format = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
"
map <F11> :TlistToggle<cr>
vmap <F11> <esc>:TlistToggle<cr>
imap <F11> <esc>:TlistToggle<cr>
"map <F8> :!ctags -f tags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"
" " Nerdtree
let Tlist_Use_Right_Window = 1
map <F10> :NERDTreeToggle<cr>
vmap <F10> <esc>:NERDTreeToggle<cr>
imap <F10> <esc>:NERDTreeToggle<cr>

" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%80v.\+/
set textwidth=80
set cc=80


let mapleader = ","
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
