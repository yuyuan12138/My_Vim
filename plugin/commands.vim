command! MakeTags !ctags -R .
command! CpCompile !g++ sol.cpp -O2 -std=c++23 -o sol
command! CpRun !./sol
