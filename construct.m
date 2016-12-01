function value = construct(x, y, sum)
% x for numbers in tens, y for ones
% true sum = sum - 1, since matlab index can not be 1

global table


valueOutrange = 0;
% if is already exceed => matrix index will be out of range
if sum-1 > 150
    value = valueOutrange;
    return
    
elseif table(x,y,sum) ~= -1
    value = table(x,y,sum);
elseif x==5 && y==5
    if(sum-1 > 150) value = valueOutrange;
    else            value = sum-1;
    end
elseif x==5 && y~=5
    tmp_value = 0;
    for i = 1:6
        tmp_value = tmp_value + construct(x, y+1, sum+i);
    end
    tmp_value = tmp_value/6;
    if tmp_value > 150
        value = valueOutrange;
    else
        value = tmp_value;
    end
elseif x~=5 && y==5
    tmp_value = 0;
    for i = 1:6
        tmp_value = tmp_value + construct(x+1, y, sum+10*i);
    end
    tmp_value = tmp_value/6;
    if tmp_value > 150
        value = valueOutrange;
    else
        value = tmp_value;
    end
else  % x != 5 && y != 5
    tmp_value = 0;
    for i = 1:6
        tmp_value = tmp_value + construct(x, y+1, sum+i) +  ...
                                construct(x+1, y, sum+10*i);
    end
    tmp_value = tmp_value/12;
    if tmp_value > 150
        value = valueOutrange;
    else
        value = tmp_value;
    end
end
table(x, y, sum) = value;
end
   
    
       