if exists("g:loaded_split") | finish | endif
let g:loaded_split = 1

command! -nargs=1 SplitOn lua require('split').split_on(<q-args>)
command! -nargs=1 SplitAfter lua require('split').split_after(<q-args>)
command! -nargs=1 SplitBefore lua require('split').split_before(<q-args>)

