#!/bin/bash

# Prompt user for date and store that in playerDate variable
echo "Enter the day you wish to investigate (MMDD format): "

read playerDate

echo

# made it do two lines of arguments to better match the assignment asking for two even though it is three

echo "Enter the time you wish to investigate (hh:mm:ss AM/PM format): "

read playerTime playerAMPM

echo

# Prompt user for AM or PM and store in playerAMPM variable
# echo "Enter if this time is AM or PM: "

# read playerAMPM

# echo

echo "Gathering data for $playerTime $playerAMPM on $playerDate and printing to screen"

echo

echo "----------------------------------"

echo

# Using search for the particular Time and date_dealer_sched file and then print the Time, AM/PM and Roulette Dealer name (columns 1,2,5 and 6)
# Export those results to the screen
grep $playerTime' '$playerAMPM $playerDate"_Dealer_schedule" | awk -v var1="$playerDate" '{print "On "var1, "at " $1, $2, "the Roulette Dealer was: " $5, $6}'
echo
