#!/bin/bash 

# KARAN CHAUDHARY 
# PRINT NUMBER UNTIL USER HIT A NEGATIVE NUMBER AND COUNT NUMBER OF INPUTS GIVEN BY THE USER.

#TAKING INPUT FROM THE USER
read -p "ENTER YOUR NUMBER: " num

# INITIALISING SUM AND COUNT AS ZERO
sum=0
count=0

# CHECKING CONDITION IN WHILE LOOP FOR POSITIVE INPUTS
while [ $num -ge 0 ]
do

# CALCULATING THE SUM OF ALL POSITIVE INPUTS 
sum=$((sum + num))
# COUNTING THE INPUTS 
count=$((count+1))

# TAKING INPUT TILL USER HIT A -VE NUMBER 
	read -p "ENTER YOUR NUMBER: " num
done

# PRINTING THE SUM OF ALL +VE INPUTS AND INPUT_COUNTS
echo -e "THE SUM OF ALL POSITIVE INTEGER IS: $sum \nYOU HAVE GIVEN $((count+1)) INPUTS \nYOU HAVE ENTERED $count POSITIVE NUMBERs \nTHE ONE NEGATIVE INPUTS IS $num"

