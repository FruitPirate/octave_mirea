function perestanovki4(n,k)
% n>k
x = 1:k;
disp(x)
s = k;
while s ~= 0
   while ~(x(s) < n - k + s);
       s = s - 1;
   end
   x(s) = x(s) + 1;
   for i = s + 1:k
       x(i) = x(i-1) + 1;
       if s < k
          s = s + 1;
       end   
   end
   disp(x)
   end
end  
        
        

