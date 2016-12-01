# diceGame
Science Computing diceGame

Create table
# using myTable() to create a state transition table
# table[x][y][sum] = value
# x   : using blocks in tens digit
# y   : using blocks in ones digit
# sum : the summuation in this state
#     
# value records the expectation of the state,
# 
# case 1 : 
#   if the GameTable is filler(x = 5, y = 5), then value is sum
#
# case 2 : 
#   GameTable remains only tens digit or ones digit block, 
#   then the sum all GameTable filling the block
#   from 1~6, and divided the summation with 6
# 
# case 3 
#   Gametable remains both sides of blocks
#   Take average of filling one block in either side, which has 12 possible
#
#  if sum is larger than target, the value is equals to 0

Start Strategy
#
# Given the current GameTable and diceValue
# compares the state value of adding diceValue to tens and ones digit side
# and adds the diceValue to the larger side


Analysis
# table(1,1,1) = 57
# for empty state, avg is (35 + 3.5) * 4 = 154
# almost half will be out of 150 => 0, avg expectation ~ 100 * 1/2

