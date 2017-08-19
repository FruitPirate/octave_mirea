function rek2(r)
   if ~r.is_bord('w')
       r.step('w')
       rek2(r)
       r.step('o')
       r.step('o')
   end
end