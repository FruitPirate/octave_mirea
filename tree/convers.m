function [t2,ir] = convers
t = {{{6},{5},{4},2},{{8},{7},3},1};
global t2;
ir = t{end};
obhod(t);
end


function obhod(t)
ind = [];
for k = 1:length(t) - 1
    obhod(t{k});
    ind(end + 1) = t{k}{end};
end
t2{t{end}} = ind;
end   