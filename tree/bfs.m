function minDist = bfs(G, S, T)
   
  q = [ S ];
  used(1 : length(G)) = -1;
  used(S) = 0;
  while ~isempty(q)
    cur = q(1);
    q(1) = [];
    for i = 1 : length(G{cur})
      if used(G{cur}(i)) == -1
        used(G{cur}(i)) = used(cur) + 1;
        q(end + 1) = G{cur}(i);
      endif
    endfor
    if used(T) ~= -1
      break;
    end
  endwhile
  minDist = used(T);
   
endfunction