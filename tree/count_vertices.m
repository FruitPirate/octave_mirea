function count_vertices
t = {{{6},{5},{4},2},{{8},{7},3},1};
num_ver(t)
end

function n = num_ver(t)
  if isempty(t) == 1
     n = 0;
     return
  end  
  n = 1;
  for k = 1:length(t) - 1
      n = n + num_ver(t{k});
  end
  disp(n)
end  