function paint_box_chess(r)
move_south_west(r)
paint_line(r,'o')
while r.is_bord('n') == 0
   if r.is_bord('o')
      side='w'
   else
      side='o'
   end
   if r.is_mark 
      r.step(side)
   end   
   r.step('n')
   paint_line(r,side)
end

function paint_line(r,side)
r.mark
while r.is_bord(side) == 0
    r.step(side)
    if r.is_bord(side) == 0
            r.step(side)
            r.mark
    end
end
function move_south_west(r)
while r.is_bord('s') == 0
   r.step('s')
end
while r.is_bord('w') == 0
    r.step('w')
end
 