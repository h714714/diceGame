function t = test()
str = load('myTable.mat');
t = str.table(1,1,1);
end