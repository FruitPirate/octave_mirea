function M = gauss(M)
  k = 1;
  while k <= min(size(M))
    M(k : end, k : end) = sortrows(M(k : end, k : end), -1);
    for n = k + 1 : size(M, 1)
      if M(n, k)
        M(n, k : end) -= M(k, k : end) * M(n, k)/M(k, k);
      endif
    endfor
    while M(end, :) == zeros(1, size(M, 2))
      M(end, :) = [];
    endwhile
    ++k;
  endwhile
endfunction