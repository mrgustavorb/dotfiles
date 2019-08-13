source ~/.vimrc

call plug#begin()
" FuzzyFinder helps to search for a file on terminal
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Ruby/Rails Extensions
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

" Markdown helper
Plug 'plasticboy/vim-markdown'

" NERDTree creates a folder scheme on terminal
Plug 'scrooloose/nerdtree'

" Git Extensions
Plug 'airblade/vim-gitgutter'

" GraphQL Extensions
Plug 'jparise/vim-graphql'

" Dockerfile helper
Plug 'ekalinin/Dockerfile.vim'

" Elixir Extensions
Plug 'elixir-lang/vim-elixir'

" Go Extensions
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}

" Random Extensions
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'

call plug#end()

autocmd VimLeave *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

"Go Extensions settings
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_def_mapping_enabled = 0
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0
let g:go_highlight_array_whitespace_error = 1

" Git extensions settings
let g:gitgutter_max_signs = 1000

" NERDTree settings
map <C-o> :NERDTreeToggle<CR>

" LightLine settings
let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

