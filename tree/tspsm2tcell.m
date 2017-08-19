function tcell = tspsm2tcell(tspsm)
   
  a = zeros(1, length(tspsm));
  spsm = tspsm;
  a(1) = 1;
  tcell = packer(1);
   
  function tcell = packer(ind)
 
    tcell = {};
    for i = 1 : length(spsm{ind})
      if ~a(spsm{ind}(i))
        a(spsm{ind}(i)) = 1;
        tcell{end + 1} = packer(spsm{ind}(i));
      endif
    endfor
    tcell{end + 1} = ind;
 
  endfunction
   
endfunction