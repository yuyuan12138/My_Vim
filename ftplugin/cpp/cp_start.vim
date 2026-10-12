" 生成 C++ 代码竞赛起始文件
" 用法：
"   :CP              " 默认生成 sol.cpp
"   :CP abc.cpp      " 生成指定文件

if exists('b:did_cpp_cp_start')
  finish
endif
let b:did_cpp_cp_start = 1

function! s:CreateContestFile(name) abort
  let l:name = a:name
  if empty(l:name)
    let l:name = input('竞赛文件名 [main.cpp]: ', 'sol.cpp')
  endif

  if empty(l:name)
    echohl WarningMsg
    echom 'Canceled'
    echohl None
    return
  endif

  if l:name !~ '\.cpp$'
    let l:name .= '.cpp'
  endif

  let l:path = fnamemodify(l:name, ':p')
  if filereadable(l:path)
    if confirm('文件已存在，是否覆盖？', "&是\n&否", 2) != 1
      echom '已取消，未修改文件。'
      return
    endif
  endif

  execute 'edit! ' . fnameescape(l:name)
  let l:template = [
        \ '#include <bits/stdc++.h>',
        \ '',
        \ 'int main() {',
        \ "\tstd::ios::sync_with_stdio(false);",
        \ "\tstd::cin.tie(nullptr);",
        \ '',
        \ "\treturn 0;",
        \ '}',
        \ ]
  call setline(1, l:template)
  if line('$') > len(l:template)
    execute (len(l:template) + 1) . ',$delete _'
  endif
  silent! write
  execute 'normal! gg'
  call cursor(5, 5)
  echom '已生成 ' . l:name
endfunction

command! -buffer -nargs=? -complete=file CP call <SID>CreateContestFile(<q-args>)
