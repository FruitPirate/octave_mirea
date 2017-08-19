function count_leaves2
t = {{{6},{5},{4},2},{{8},{7},3},1};
func(t)
end


function n = func(t)
if isempty(t) == 1
   n = 1;
   return
end
n = 0;   
for k = 1:length(t) - 1
    n = n + func(t{k});
end    
disp(n)
end



%t = {[2,3],[4,5,6],[7,8],[],[],[],[]}