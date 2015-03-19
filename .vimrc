set nu
syntax on
set autoindent 
set smartindent
set ruler
set ts=4
set shiftwidth=4
set ruler
set sm
set softtabstop=4
set expandtab
execute pathogen#infect()
filetype plugin indent on
autocmd vimenter * NERDTree
call pathogen#incubate()
call pathogen#helptags()
colorscheme candyman

" Octave syntax 
augroup filetypedetect 
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave 
augroup END

let g:jedi#auto_vim_configuration = 0
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1"
