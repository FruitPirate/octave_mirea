function go_ugo_zapad(r)
while r.is_bord('s') == 0
   r.step('s')
end
while r.is_bord('w') == 0
    r.step('w')
end
end   