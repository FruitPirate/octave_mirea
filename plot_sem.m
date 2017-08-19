function plot_sem(a,b,m,N)
for i = 1:m
    g = @(x) f(x,i);
    plot_graph(g,a,b,N)
end
end

function plot_graph(f,a,b,N)
dx = (b-a)/N;
xx = a:dx:b;
yy = zeros(size(xx));
for i = 1:length(xx)
    yy(i) = f(xx(i));
end
line(xx,yy);
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
   