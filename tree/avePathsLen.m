function ave = avePathsLen(t)
 
  if length(t) < 2
    ave = 0;
    return;
  endif
   
  sum = 0;
  qOfPaths = 0;
  for i = length(t) - 1 : -1 : 1
    depth = 0;
    sum += traveller(t{i});
  endfor
  ave = sum/qOfPaths;
   
  function num = traveller(t)
     
    ++depth;
    ++qOfPaths;
    for i = length(t) - 1 : -1 : 1
      sum += traveller(t{i});
      --depth;
    endfor
    num = depth;
     
  endfunction
 
endfunction