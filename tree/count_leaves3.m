function count_leaves3
t = {[2,3],[4,5,6],[7,8],[],[],[],[],[]};
k = 0;
for i = 1:length(t)
    if isempty(t{i})
    k = k + 1;
    end
end
disp(k);
end    