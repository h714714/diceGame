function myTable
% consture the state table for DP

% possible remaining block = 0~4
% possible value = 0~150, but matlab index start from 1
global table
table(5,5,300) =zeros; 
table(:,:,:) = -1;

construct(5, 5, 1);
save myTable table