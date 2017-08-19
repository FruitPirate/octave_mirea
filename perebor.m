function perebor(M)
 % Алгоритм генерации всех подмножеств заданного множества 
  disp([]);
  if length(M) < 1
    return;
  endif
   
  vi = [1];
  disp(M(vi(1)));
  while vi(1) ~= length(M)
    while vi(end) ~= length(M)
      vi(end + 1) = vi(end) + 1;
      disp(M(vi(1) : vi(end)));
    endwhile
    while length(vi) ~= 2
      vi(end) = [];
      disp(M(vi(1) : vi(end)));
    endwhile
    vi(end) = [];
    disp(M(++vi(1)));
  endwhile
 
endfunction