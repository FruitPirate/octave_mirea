function tp = ttp(r)
kol = 0
tp = 0
while ~r.is_bord('n')   
if r.is_bord('w')
   way = 'o'
   else way = 'w'
end
[kol,tp] = sr(r,way,kol,tp)
r.step('n')
end   
if r.is_bord('w')
   way = 'o'
   else way = 'w'
end
[kol,tp] = sr(r,way,kol,tp)
tp = tp/kol
end
function [kol,tp] = sr(r,way,kol,tp)
while r.is_bord(way) == 0
   if r.is_mark == 1
   kol = kol+1
   tp = tp + r.get_tmpr
   end
   r.step(way)
end
if r.is_mark == 1
   kol = kol + 1
   tp = tp + r.get_tmpr
end
end   
   