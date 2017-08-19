function perestanovki3(n)
% Перестановки без повторений  
x = 1:n;
disp(x)    
for i = 1:factorial(n) - 1
   for j = n:-1:2
       if x(j) > x(j-1)
          a = j - 1;
       break
       end
    end
b = a + 1;
for j = a + 1:n
    if (x(j) > x(a)) && (x(j) < x(b))
        b = j;
    end
end
c = x(b);
x(b) = x(a);
x(a) = c;     
x(b:n) = sort(x(b:n));
disp(x);
end
end

