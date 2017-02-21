call dein#add('rust-lang/rust.vim')

call dein#add('racer-rust/vim-racer')
let g:racer_cmd = expand('~/.cargo/bin/racer')
let g:racer_experimental_completer = 1
