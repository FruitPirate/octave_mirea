function zakr_pole_shahm_1(r)
do_upora(r,'s')
do_upora(r,'w')
zakr_ryad(r,'o')
while r.is_bord('n') == 0
    if r.is_bord('o')
        side = 'w';
    else
        side = 'o';
    end
    
    if r.is_mark
        r.step(side)
    end
    r.step('n')
    zakr_ryad(r,side)
end

function zakr_ryad(r,side)
r.mark
while r.is_bord(side) == 0
    r.step(side)
    if r.is_bord(side) == 0
            r.step(side)
            r.mark
    end
end

function do_upora(r,side)
while r.is_bord(side) == 0
    r.step(side)
end
