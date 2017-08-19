function binominal2(n,p)  
hold on;
q = 1 - p;
for k = 1:n 
    x = factorial(n)/factorial(n-k)/factorial(k) * p^k * q^(n - k);
    stem(k,x)
end
end    