function zakr_pole(r)
if r.is_mark == 0
   r.mark
end
a = ['n','w','o','s']
for i = 1:4
if r.is_bord(a(i)) == 0   
   r.step(a(i))
end
if r.is_mark == 0
zakr_pole(r)
end
if r.is_bord(a(rem(4-i+1,5))) == 0
r.step(a(rem(4-i+1,5)))
end
end
end