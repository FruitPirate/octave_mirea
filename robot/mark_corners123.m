function mark_corners123(r)
move_south_west(r)
r.mark


while ~r.is_bord('o')
   r.step('o')
end

r.mark
while ~r.is_bord('n')
   r.step('n')
end

r.mark   
while ~r.is_bord('w')
   r.step('w')
end

r.mark   
while ~r.is_bord('s')
   r.step('s')
end  

function move_south_west(r)
while r.is_bord('s') == 0
   r.step('s')
end
while r.is_bord('w') == 0
    r.step('w')
end