set nocompatible

so ~/.vim/plugins.vim

syntax enable
set backspace=indent,eol,start            "Make backspace behave like every other editor.
let mapleader = ','                       "The default is \, but a comma is much better.
set number                                "Let's activate line numbers.


"-------------Visuals--------------"
colorscheme gruvbox 

set t_CO=256                              "Use 256 colors. This is useful for Terminal Vim.


"-------------Search--------------"
set hlsearch                              "Highlight all matched terms.
set incsearch                             "Incrementally highlight, as we type.

"-------------Split Management--------------"
set splitbelow                            "Make splits default to below...
set splitright                            "And to the right. This feels more natural.


"We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>




"-------------Mappings--------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

imap jk <Esc>
imap kj <Esc>

"Make NERDTree easier to toggle
nmap <C-N> :NERDTreeToggle<cr>


"-------------Plugins--------------"

"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"/
"/ NERDTree 
"/
"Closes vim if NERDTree is the only buffer open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.

augroup autosourcing
   autocmd!
   autocmd BufWritePost .vimrc source %
augroup END
