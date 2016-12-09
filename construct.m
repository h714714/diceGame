function value = construct(x, y, sum)
% x for numbers in tens, y for ones
% true sum = sum - 1, since matlab index can not be 1

global table
true_sum = sum-1;
% if is already exceed => matrix index will be out of range
if table(x,y,sum) == -1
    if x==1 && y==1
        if(true_sum > 150) table(x, y, sum) = 0;
        else               table(x, y, sum) = true_sum; % close to 150, higher value
        end
   
    else
        ex = 0;
        for i = 1:6
            tmp_value = 0;
            if x ~= 1
                tmp_value = max(tmp_value, construct(x-1, y, sum+10*i));
            end
            if y ~= 1
                tmp_value = max(tmp_value, construct(x, y-1, sum+i));
            end
            ex = ex + tmp_value;
        end
        table(x, y, sum) = ex/6;
    end
end
            

value = table(x, y, sum);
end
   

    
       