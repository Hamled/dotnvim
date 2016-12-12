" Setup everything relative to nvim dir
let g:nvim_dir = '~/.config/nvim'

" Cache directory setup from bling
let s:cache_dir = g:nvim_dir . '/.cache'
function! util#get_cache_dir(suffix)
  return resolve(expand(s:cache_dir . '/' . a:suffix))
endfunction

" persistent undo
if exists('+undofile')
  set undofile
  let &undodir = util#get_cache_dir('undo')
endif

" backups
set backup
let &backupdir = util#get_cache_dir('backup')

" swap files
let &directory = util#get_cache_dir('swap')
set noswapfile

function! EnsureExists(path)
  if !isdirectory(expand(a:path))
    call mkdir(expand(a:path))
  endif
endfunction

call EnsureExists(s:cache_dir)
call EnsureExists(&undodir)
call EnsureExists(&backupdir)
call EnsureExists(&directory)
