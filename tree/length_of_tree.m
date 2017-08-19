function length_of_tree
global p = 0;   
global n = 0;
t = {{{8},{7},3},{{6},{5},{4},2},1};
obhod(t);
disp(p);
end

function obhod(t) 
global p;   
global n;
n = n + 1;
for i = 1:length(t) - 1
    if isempty(t{i}) == 1
       n = n - 1;
       return
    end  
    obhod(t{i});
end   
if n > p
   p = n;
end 
end   