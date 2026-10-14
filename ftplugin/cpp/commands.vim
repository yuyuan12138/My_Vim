" C++ 竞赛编译和运行命令
if exists('b:did_cpp_commands')
  finish
endif
let b:did_cpp_commands = 1

command! -buffer CpCompile !g++ sol.cpp -O2 -Wall -std=c++23 -o sol
command! -buffer CpRun !./sol
