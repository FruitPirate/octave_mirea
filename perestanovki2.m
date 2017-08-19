function perestanovki2(n)
% Перестановки без повторений
x = 1:n;
disp(x)    
i = 1;
for i = 1:factorial(n)
   x = next(x);
   i =  i + 1;
   disp(x)
end
end

function x = next(x)
j = length(x);
while x(j-1) > x(j)
    j = j - 1;
end
p = j + 1;    
while x(j) < x(p)
   p = p + 1;
end
c = x(p);
x(p) = x(j);
x(j) = c;
x(j+1:end) = fliplr(x(j+1:end))
end   