" C++ 竞赛命令快捷键
if exists('b:did_cpp_mapping')
  finish
endif
let b:did_cpp_mapping = 1

nnoremap <buffer> <F5> :CpCompile<CR>
nnoremap <buffer> <F6> :CpRun<CR>
