function tree = mass_to_tree(x)
  root = x(1);
  tree = {0,0,root};
  less = [];
  more = [];
  for i = 2:length(x)
      if x(i) < root
         less(end + 1) = x(i);
      else
         more(end + 1) = x(i);   
      end
   end
   if length(less) != 0
      tree{1} = mass_to_tree(less);
   end
   if length(more) != 0
      tree{2} = mass_to_tree(more)
   end
end
   
    