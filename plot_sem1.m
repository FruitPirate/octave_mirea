function plot_sem1(a,b,m,N)
for i = 1:m
    plot_graph(i,a,b,N)
end
end

function plot_graph(n,a,b,N)
dx = (b-a)/N;
xx = a:dx:b;
yy = zeros(size(xx));
i = 1;
for x = xx
    yy(i) = f(x,n);
    i = i + 1;
end
line(xx,yy)
end

function y = f(x,n)
a = x;
xx = x*x;
y = 0;
for k = 1:n
    y = y + a;
    a = -a*xx/(2*k)/(2*k+1);
end
end
  