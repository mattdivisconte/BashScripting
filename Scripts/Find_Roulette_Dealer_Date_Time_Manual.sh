#!/bin/bash

# Prompt user for date and store that in playerDate variable
echo "Enter the day you wish to investigate (MMDD format): "

read playerDate

echo

# Prompt user for time and store that in playerTime variable
echo "Enter the time you wish to investigate (hh:mm:ss format): "

read playerTime

echo

# Prompt user for AM or PM and store in playerAMPM variable
echo "Enter if this time is AM or PM: "

read playerAMPM

echo

echo "Gathering data for $playerTime $playerAMPM on $playerDate and exporting to Dealer_working_during_losses"

echo

echo "----------------------------------"

echo

# Using search for the particular Time and date_dealer_sched file and then print the Time, AM/PM and Roulette Dealer name (columns 1,2,5 and 6)
# Export those results to a text file
grep "$playerTime $playerAMPM" $playerDate"_Dealer_schedule" | awk '{print $1, $2, $5, $6}' >>  Dealers_working_during_losses
