function znpower(a,m,n)
%k=a^m â Zn
if m < 2^63 && n < 10^9 && n > 1
   k = mod(a^m,n)
else disp("m or n doesn't meet the conditions")   
end
end   