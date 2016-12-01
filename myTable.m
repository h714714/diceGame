% consture the state table for DP

% possible remaining block = 0~4
% possible value = 0~150, but matlab index start from 1
global table
table(5,5,151) =zeros; 
for i = 1: 5
    for j =1 : 5
        table(i,j,:) = -1;
    end
end

construct(1, 1, 1);
save myTable table