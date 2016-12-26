# diceGame
Science Computing diceGame

#Excution
#myTable()
 create the dynamic table
#goGameEval()
 start random dice throwing

#Create state table
 Create a state transition table  
 t[x][y][sum] = value  
 x   : remained blocks in tens digit  
 y   : remained blocks in ones digit  
 sum : the summuation in this state  
     
 value : the expectation of the state  
 The following are various cases and the way
 to determine the value of the correspinding state. 
 
 case 1 : 
   The GameTable is full(x = 0, y = 0)     
   The value is the sum

 case 2 : 
   GameTable remains only tens digit or only ones digit   
   Accumulate the six values of states that fills the remained digit
   from 1 to 6, and the value equals to the summation devided by 6  
   For example, if only tens digit remained and the sum is 100, then the six
   corresponding states are fills 1 to 6 to the tens digit, adding 10 to 60 to
   the sum of the state. Therefore,  
   t[3][0][100] = (t[2][0][110] +  t[2][0][120] +  t[2][0][130] +  t[2][0][140] +  t[2][0][150] +  t[2][0][160] ) /6
 
 case 3 :
   Gametable remains both sides of digit    
   From 1 to 6, filling the each number to the side causing greater state value    
   the value equals to the averaged value to the six results


#Strategy

 Given the current GameTable and diceValue  
 compares the two state value of adding diceValue to tens and ones digit side  
 and adds the diceValue to the larger value side




