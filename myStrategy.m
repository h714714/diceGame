function nextPos=myStrategy(gameState, diceValue)
%myStrategy: Strategy for playing the dice sum game
%	Usage: nextPos=myStrategy(gameState, diceValue)
%		gameState: A 4-by-2 matrix indicating the state of the game
%		diceValue: the dice value after tossing the dice
%		nextPos: Your move for placing the dice value.
%			It should be either 1 or 2:
%			1: Place the value at the ten's position
%			2: Place the value at the one's position
%
%	This function is called in diceSumGame.m.

%	Roger Jang, 20101214


tenPosCount=sum(gameState(:,1)==0); % Vacancy count of ten's position
onePosCount=sum(gameState(:,2)==0); % Vacancy count of one's position

if tenPosCount~=0 & onePosCount==0	% Only ten's position is available.
	nextPos=1;
	return
end
if tenPosCount==0 & onePosCount~=0	% Only one's position is available.
	nextPos=2;
	return
end

target=150;	% This is fixed.
% ====== My strategy starts here...
strategy=3;
temp=sum(gameState);
total=10*temp(1)+temp(2);
switch(strategy)
	case 1
		% === Strategy 1: Random selection
		nextPos=randi(2);
	case 2
		% === Strategy 2: Play aggressively!
		if diceValue*10+total>target	% If assignment of 10's position leads to explosion...
			nextPos=2;
		else
			nextPos=1;
        end
    case 3
        % my strategy 
        str = load ('myTable.mat');
        if total + diceValue*10+1 > 151
            nextPos = 1;
        else
            x = 5 - tenPosCount;
            y = 5 - onePosCount;
            tmp1 = str.table(x+1, y, total+ 10*diceValue+1);
            tmp2 = str.table(x, y+1, total+ diceValue+1);
            if tmp1 >= tmp2
                nextPos = 1;
            else
                nextPos = 2;
            end
        end

end