function binominal
% n Ч кол-во экспериментов, k Ч кол-во хороших исходов, p Ч веро€тность удачного исхода, q Ч веростность неудачного.  
hold on;
col = 'rgb';
m = { [20, 0.5], [20,0.75], [40, 0.5] };
for i = 1:3
    n = m{i}(1);
    p = m{i}(2);
    q = 1 - p;
    for k = 1:n
        x = factorial(n)/factorial(n-k)/factorial(k) * p^k * q^(n - k);
        stem(k, x, col(i));
    end   
end
end
    

  