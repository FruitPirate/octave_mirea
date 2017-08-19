function N1(r)
n=0
a=['w','o']
   while r.is_bord('n')
      go2(r,a(rem(n,2)+1),n)
      n=n+1
   end
r.step('n')
end
function go2(r,w,n)
   for i = 1:n+1
      r.step(w)
   end
end   
   
