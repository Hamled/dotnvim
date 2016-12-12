""" Core setup """
runtime util.vim
runtime general.vim
runtime plugins.vim
runtime mappings.vim " Set our mappings after all plugins

""" Plugin & other configuration """
colorscheme molokai

" Startify config
let g:startify_session_dir = util#get_cache_dir('sessions')
let g:startify_change_to_vcs_root = 1
let g:startify_show_sessions = 1
call EnsureExists(g:startify_session_dir)
