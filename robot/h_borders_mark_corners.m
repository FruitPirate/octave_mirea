function h_borders_mark_corners(r)
    go(r,'w','s');
    go(r,'w','n');
    go(r,'o','n');
    go(r,'o','s');
end

function go(r,x,y)
    noway = 0;
    if x == 'w'
        x1 = 'o';
    else
        x1 = 'w';
    end
    while ~noway
        while ~r.is_bord(x)
            r.step(x);
        end

        while r.is_bord(y)
            if r.is_bord(x1)
                noway = 1;
                break;
            else
                r.step(x1);
            end
        end
        if ~noway
            r.step(y);
        end
    end
    r.mark;
end