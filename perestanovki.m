function perestanovki(n)
  a = [1:n];
  disp(a);
  for k = 2 : factorial(n)
    i = n - 1;
    while a(i) > a(i + 1) && i > 0
      --i;
    endwhile
    j = i + 1;
    if j < n
      while a(j + 1) > a(i)
        ++j;
        if j == n
          break;
        endif
      endwhile
    endif
    t = a(j);
    a(j) = a(i);
    a(i) = t;
    a(i + 1 : end) = flip(a(i + 1: end));
    disp(a);
  endfor
endfunction