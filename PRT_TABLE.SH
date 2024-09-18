#!/bin/bash

# KARAN CHAUDHARY

# SIMPLE SCRIPT TO PRINT THE MULTIPLICATION TABLE IF NUM IS GREATER THAN 1

# TAKING INPUT FROM THE USER

while true;
do
read -p "ENTER THE NUMBER TO PRINT TABLE: " num

# CHECKING THE NUMBER IS GREATER THAN 1 OR NOT

if [ $num -gt 1 ];
then
        echo " THE MULTIPLICATION TABLE OF $num IS PRINTING BELOW : "

        # USING LOOP TO PRINT THE TABLE UPTO 1O LINES
        for((i=1; i<=10; i++))
        do
                # MULTIPLYING THE INPUT WITH 1-10
                mul=$((num * i ))
                # PRINTING THE STORED MULTIPLIED VALUE
                echo " $num *   $i  =  $mul "
                # PRINTING WITH 0.3 SEC DELAY ( JUST FOR AESTHETIC )
                sleep 0.3

        done
break

else
        # IF LESS THEN ONE  THEN PRINTING THE MESSAGE
echo " PLEASE ENTER NUMBER GREATER THAN 1 ATLEAST "
fi
done

