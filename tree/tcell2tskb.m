function tskb = tcell2tskb(tcell)
 
  if isempty(tcell)
    tskb = '()';
    return;
  endif
   
  tskb = '';
  for i = 1 : length(tcell) - 1
    tskb = [tskb tcell2tskb(tcell{i})];
  end
  tskb = ['(', tskb, int2str(tcell{end}), ')'];
   
endfunction