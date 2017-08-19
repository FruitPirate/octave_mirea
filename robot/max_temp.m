function max_temp(r)
    lowest_temp = inf;
    current_line = 1;
    min_line = 1;
    while true
        new = next_line(r);
            if new < lowest_temp
            lowest_temp = new;
            min_line = current_line;
        end
        if r.is_bord('n')
            break;
        end
        r.step('n');
        current_line = current_line + 1;
    end
    goto(r, current_line, min_line);
    display(['The lowest temperature: ', num2str(lowest_temp)]);
end

function len = next_line(r)
    if r.is_bord('w')
        side = 'o';
    else
        side = 'w';
    end
    len = max_temp_of_line(r, side);
end

function goto(r, current, to)
    if current > to
        side = 's';
    else
        side = 'n';
    end
    for i = 1:abs(current - to)
        r.step(side);
    end
end

function [max_temp] = max_temp_of_line(r, side)
    max_temp = -inf;
    while true
        n = next_block(r, side);
        if n > max_temp
            max_temp = n;
        end
        if r.is_bord(side)
            break;
        end
    end
end

function avrg = next_block(r, side)
    q = 0;
    temp = 0;
    
    while ~r.is_mark && ~r.is_bord(side)
        r.step(side);
    end

    while r.is_mark && ~r.is_bord(side)
        q = q + 1;
        temp = temp + r.get_tmpr;
        r.step(side);
    end
    if r.is_mark
        q = q + 1;
        temp = temp + r.get_tmpr;
    end
    avrg = temp / q;
end