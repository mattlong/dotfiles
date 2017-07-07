"" Pathogen
execute pathogen#infect()


"" General
set nocompatible                " break vi compatibility
syntax enable                   " enable syntax highlighting
set encoding=utf-8              " use unicode
set showcmd                     " display incomplete commands
set hidden                      " allow unsaved files to be put in background
filetype on
filetype plugin on
filetype plugin indent on       " load file type plugins + indentation

set laststatus=2                " show status line (0 - never, 1 - default, 2 - always)
set statusline=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]\ %{fugitive#statusline()}

if v:version >= 703
    set relativenumber          " Show relative line numbers
else
    set number                  " Show absolute line numbers
endif

set cursorline                  " highlight current line
if has("gui_macvim") || $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    colorscheme xoria256        " which colorscheme to use

    "set background=dark
    "colorscheme solarized
endif


"" Key Mappings
nmap ; :
nnoremap j gj
nnoremap k gk


"" Macros
let @p='Oimport ipdb; ipdb.set_trace()_j'


"" CtrlP
let mapleader = ','
let g:ctrlp_map = '<leader>t'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_height = 30
set wildignore+=*/tmp/*,*.so,*.swp,*.o,*.obj,.git,*.pyc,*.class,node_modules,.eggs,.tox,.cache,*.egg-info,.reqs-venv,lib.linux-x86_64-2.7


"" Whitespace
set tabstop=4 shiftwidth=4      " a tab is four spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode

"autocmd FileType html setlocal shiftwidth=2 tabstop=2
"autocmd FileType xhtml setlocal shiftwidth=2 tabstop=2

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter


"" vim-flake8   https://github.com/nvie/vim-flake8
let g:flake8_show_in_gutter=1
let g:flake8_show_in_file=1
"autocmd FileType python map <buffer> <F3> :call Flake8()<CR>   " Map to F3
"autocmd BufWritePost *.py call Flake8()     " check on file save


"" jedi-vim
let g:jedi#show_call_signatures = "1"
let g:jedi#completions_enabled = 0
"let g:jedi#use_tabs_not_buffers = 1
"let g:jedi#use_splits_not_buffers = "left"
"let g:jedi#popup_on_dot = 0
"let g:jedi#popup_select_first = 0
"let g:jedi#goto_command = "<leader>d"
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = ""
"let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<C-Space>"
"let g:jedi#rename_command = "<leader>r"


"" Plugin Fixes
let g:omni_sql_no_default_maps = 1 " disable SQL syntax keyboard shortcuts

map <leader>gt :call TimeLapse() <cr>


"" copy/paste with system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

"" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['python', 'flake8', 'pyflakes']  " to feel bad about yourself, add pylint
