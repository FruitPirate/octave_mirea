function mark_corners1(r)
move_south_west(r)
r.mark
a = ['o','n','w','s']
for i = 1:4
while ~r.is_bord(a(i))   
   r.step(a(i))
end
r.mark   
end
end
function move_south_west(r)
while r.is_bord('s') == 0 || r.is_bord('w') == 0
   if r.is_bord('s')
      obhod_prep(r,'s')
      r.step('w')
   elseif r.is_bord('w') 
      obhod_prep(r,'w')
      r.step('s')
   elseif ~r.is_bord('s')
      r.step('s')       
   elseif r.is_bord('s') || r.is_bord('w') 
      break 
   end   
end   
end 

function obhod_prep(r, way)
if way == 'n' || way == 's'
  pway = 'w'
  pwayret = 'o'
else
  pway = 'n'
  pwayret = 's'
end
i = 0;
while r.is_bord(way) == 1
   if ~r.is_bord(pway)
      r.step(pway)
      i = i+1
    else
      break
    end    
end
if ~r.is_bord(way)
  r.step(way)
end
while i > 0
   i = i-1
   r.step(pwayret)
end   
end     

   