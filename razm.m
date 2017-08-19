function razm(n,k)
% Размещения с повторениями  
x(1:k) = 1;
disp(x)
for i = 1:n^k - 1
   x = next(x,n);
   disp(x)
end
end

function x = next(x,n)
k = length(x);
p = k;
while x(p) == n
   p = p - 1;
end
x(p) = x(p) + 1;
x(p+1:end) = 1;
end   