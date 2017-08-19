function rek4(r)
   if r.is_bord('s')
      r.step('w')
      rek4(r)
      r.step('o')
   else
      r.step('s')
   end
end