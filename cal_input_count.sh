#!/bin/bash 

# KARAN CHAUDHARY 
# PRINT NUMBER UNTIL USER HIT A NEGATIVE NUMBER AND COUNT NUMBER OF INPUTS GIVEN BY THE USER.

#TAKING INPUT FROM THE USER
read -p "ENTER YOUR NUMBER: " num

# INITIALISING SUM AND OTHER VARIABLES AS ZERO
sum=0
total_count=0
positive_count=0
negative_count=0
# CHECKING CONDITION IN WHILE LOOP FOR POSITIVE INPUTS
while [ $num -ge 0 ]
do

# CALCULATING THE SUM OF ALL POSITIVE INPUTS 
sum=$((sum + num))
# COUNTING THE INPUTS 
total_count=$((total_count+1))
positive_count=$((positive_count+1))


# TAKING INPUT TILL USER HIT A -VE NUMBER 
	read -p "ENTER YOUR NUMBER: " num
done
# RECORDING THE NEGATIVE INPUT
negative_count=$((negative_count+1))
total_count=$((total_count+1))

# PRINTING THE SUM OF ALL +VE INPUTS AND INPUT_COUNTS
echo "THE SUM OF ALL POSITIVE INTEGER IS: $sum"
echo "YOU HAVE GIVEN $total_count INPUTS"
echo "YOU HAVE ENTERED $positive_count INPUTS"
echo "THE ONE NEGATIVE INPUTS IS $num"

