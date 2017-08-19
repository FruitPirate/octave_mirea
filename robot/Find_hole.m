function Find_hole(r)
s='o';
   while r.is_bord('n')
      r.mark()
      s = reverse(s);
      through_mark(r, s)
   end
r.step('n')
end

function through_mark(r, s)
   while r.is_mark()
      r.step(s)
   end
end

function s2=reverse(s1)
switch s1
   case 'n'
      s2='s';
   case 'w'
      s2='o';
   case 's'
      s2='n';
   case 'o'
      s2='w';
   otherwise
      error('Invalid arg')
   end
end