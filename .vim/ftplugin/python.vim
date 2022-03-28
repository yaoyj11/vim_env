:setlocal sw=4 sts=4 et
:setlocal shiftwidth=4
:setlocal tabstop=4
:
:setlocal indentexpr=GetGooglePythonIndent(v:lnum)
:
:let s:maxoff = 50 " maximum number of lines to look backwards.
:
:function! GetGooglePythonIndent(lnum)
:
:  call cursor(a:lnum, 1)
:  let [par_line, par_col] = searchpairpos('(\|{\|\[', '', ')\|}\|\]', 'bW',
:        \ "line('.') < " . (a:lnum - s:maxoff) . " ? dummy :"
:        \ . " synIDattr(synID(line('.'), col('.'), 1), 'name')"
:        \ . " =~ '\\(Comment\\|String\\)$'")
:  if par_line > 0
:    call cursor(par_line, 1)
:    if par_col != col("$") - 1
:      return par_col
:    endif
:  endif
:
:  return GetPythonIndent(a:lnum)
:
:endfunction
:
:let pyindent_nested_paren="&sw*4"
:let pyindent_open_paren="&sw*4"
:
