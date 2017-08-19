function tcell = tskb2tcell(tskb)
 
  i = 1;
  tcell = worker;
   
  function tcell = worker
 
    tcell = {};
    ++i;
    while tskb(i) != ')'
      if tskb(i) == '('
        tcell{end + 1} = worker;
      else
        tcell(end + 1) = str2num(tskb(i));
      endif
      ++i;
    endwhile
     
  endfunction
 
endfunction