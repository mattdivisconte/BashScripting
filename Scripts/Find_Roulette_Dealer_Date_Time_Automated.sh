#!/bin/bash

#this script pulls the data from a list of loss dates and times and feeds it to the command pipe line by line to report the dealer.
while read -r line; do
 playerDate=$(echo $line | awk '{print $1}')
 playerTime=$(echo $line | awk '{print $2}')
 playerAMPM=$(echo $line | awk '{print $3}')
  # pass the variables to the command pipe and send to file
grep "$playerTime $playerAMPM" $playerDate"_Dealer_schedule" | awk -v var1="$playerDate" '{print "On "var1, "at " $1, $2, "the Roulette Dealer was: " $5, $6}' >>  Dealers_working_during_losses
done < day_time_of_losses 

# to give  visual verification that the script ran
echo
echo "Data exported to Dealers_working_during_losses"
echo
