function razb(n)
  x(1:n) = 1;
  disp(x)
  k = n;
  while k ~= 1
      s = k - 1;
      while s > 1 && x(s) == x(s-1)
          s = s - 1;
      end
      x(s) = x(s) + 1;
      p = sum(x(s+1:k));
      k = s + p - 1;
      x(s+1:k) = 1;
      disp(x(1:k))
  end
end  
   
  
    