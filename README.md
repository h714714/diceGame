# diceGame
Science Computing diceGame

#Excution
#myTable()
 create the dynamic table
#goGameEval()
 start random dice throwing

#Create table
 myTable() to create a state transition table
 table[x][y][sum] = value
 x   : remained blocks in tens digit
 y   : remained blocks in ones digit
 sum : the summuation in this state
     
 value records the expectation of the state,
 
 case 1 : 
   if the GameTable is full(x = 0, y = 0), then value is sum

 case 2 : 
   GameTable remains only tens digit or ones digit block, 
   then sum all GameTables filling the block
   from 1~6, and divided the summation with 6
 
 case 3 
   Gametable remains both sides of blocks
   Take maximun of filling one block in either side from 1 to 6,
   average the six result


#Strategy

 Given the current GameTable and diceValue
 compares the state value of adding diceValue to tens and ones digit side
 and adds the diceValue to the larger side




