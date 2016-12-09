% script
testcase = 1;
switch (testcase)
    case 1

    i = 0;
    myTable(i);
    testNum=5000;
    score=zeros(1, testNum);
    for k=1:testNum
        score(k)=diceSumGame;
    end
    explo = sum(score==0);
    nonexplo = sum(score~=0);
    nonexploavg = sum(score)/sum(score~=0);
    avg = mean(score);



    case 2
    j = 0;
    explo = zeros(1, 50);
    nonexplo = zeros(1, 50);
    nonexploavg = zeros(1, 50);
    avg = zeros(1, 50);


    for i = -100000:-100000:-5000000
        j = j+1;
        myTable(i);
        testNum=2000;
        score=zeros(1, testNum);
        for k=1:testNum
            score(k)=diceSumGame;
        end
        explo(j) = sum(score==0);
        nonexplo(j) = sum(score~=0);
        nonexploavg(j) = sum(score)/sum(score~=0);
        avg(j) = mean(score);
    end
end
