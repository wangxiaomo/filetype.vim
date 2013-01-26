"
" vim 文件类型存储在 &ft 变量中.我们需要对 &ft 没有值的文件进行操作
" 对 `file` 进行正则匹配，然后设置 ft 值

if exists("loaded_filetype_vim")
  finish
endif
let loaded_filetype_vim = 1

let s:save_cpo = &cpo
set cpo&vim
let &cpo = s:save_cpo

let s:debug = 0

let s:FILETYPE_SUPPORTED = ["perl", "python", "php", "lisp"]

if &ft !~ '\S'
  let s:filename = bufname("%")
  let s:sys_ft = system("file " . s:filename)
  for ft in s:FILETYPE_SUPPORTED
    if s:sys_ft =~ ft
      if s:debug == 1
        echomsg "FILETYPE DETECTED: " . ft
      endif
      exec "set ft=" . ft
    endif
  endfor
endif
