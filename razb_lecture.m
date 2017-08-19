function razb_lecture(n)
x(1:n) = 1;
disp(x)
k = length(x);
while length(x) != 1
    x = next(x);
    disp(x);
end
end   

function x = next(x)
k = length(x);
s = k - 1;
while ~(s == 1 || x(s-1) > x(s))
   s = s - 1;
end
x(s) = x(s) + 1;
p = sum(x(s + 1:end));
x = [x(1:s), ones(1, p - 1)];   
end
