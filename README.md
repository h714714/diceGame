# diceGame
Science Computing diceGame

#Excution
#myTable()
 create the dynamic table
#goGameEval()
 start random dice throwing

#Create state table
 myTable() to create a state transition table
 table[x][y][sum] = value  
 x   : remained blocks in tens digit  
 y   : remained blocks in ones digit  
 sum : the summuation in this state  
     
 value : records the highest expectation of the state, which is equal to the
 highest value of all possible next state. The following are cases and the way
 to determine the value of the correspinding state. 
 
 case 1 : 
   If the GameTable is full(x = 0, y = 0), then value is sum

 case 2 : 
   GameTable remains only tens digit or only ones digit, 
   then accumulates all the value of states that fills the remained digit
   from 1 to 6, and the value equals to the summation devided with 6
   For example, table[3][0][100] = (table[2][0][110] +  table[2][0][120] +  table[2][0][130] +  table[2][0][140] +  table[2][0][150] +  table[2][0][160] ) /6
 
 case 3 :
   Gametable remains both sides of digit  
   From 1 to 6, filling the number to the digit resulting greater value of state  
   the value equals to the averaged six results


#Strategy

 Given the current GameTable and diceValue
 compares the two state value of adding diceValue to tens and ones digit side
 and adds the diceValue to the larger value side




