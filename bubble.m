function N = bubble(N)
N = [10,100,1000,10000]; % массив значений N
 for k = 1:length(N)
    a = round( N(k)*rand(1,N(k)) ); % генерируем массив
    for i = 2:N(k) % сортируем
        for j = N(k):-1:i
            if a(j-1) > a(j)
                x = a(j-1);
                a(j-1) = a(j);
                a(j) = x;
            end
        end
    end
end