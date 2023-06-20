#!/bin/bash

# Prompt user for date and store that in playerDate variable
echo "Enter the day you wish to investigate (MMDD format): "

read playerDate

echo

# Prompt user for time and store that in playerTime variable ... changed input to better match instructions for two arguments 
# even though it still really is three

echo "Enter the time you wish to investigate (hh:mm:ss AM/PM format): "

read playerTime playerAMPM

echo

# Prompt user for casino game and store in casinoGame variable
# edited to make more visually appealing
echo  "Enter the casino game you are interested in: Roulette, BlackJack or Texas Hold 'Em: "

echo
echo "      -----------------------------"
echo "      -                           -"
echo "      -  Choose Casino Game:      -"
echo "      -                           -"
echo "      -  [B] - BlackJack          -"
echo "      -                           -"
echo "      -  [R] - Roulette           -"
echo "      -                           -"
echo "      -  [T] - Texas Hold 'Em     -"
echo "      -                           -"
echo "      -----------------------------"

echo

read casinoGame

# Prompt user for AM or PM and store in playerAMPM variable
# echo "Enter if this time is AM or PM: "

# read playerAMPM

# using case to run three different commands based on the input of the casino game.  Just for visual info
echo
case $casinoGame in
    "R")
        echo "Gathering data for $playerTime $playerAMPM on $playerDate for Roulette and printing to screen"
        ;;    
    "B")
        echo "Gathering data for $playerTime $playerAMPM on $playerDate for BlackJack and printing to screen"
        ;;
    "T")
        echo "Gathering data for $playerTime $playerAMPM on $playerDate for Texas Hold 'Em and printing to screen"        ;;
      *)
        echo "Invalid Casino game choice"
        ;;
esac

echo

#echo "Gathering data for $playerTime $playerAMPM on $playerDate for $casinoGame and printing to screen"

#echo

echo "----------------------------------"

echo

# using case to run three different commands based on the input of the casino game.  Just needs to point to different dealer columns depending on the game
case $casinoGame in
    "R")
        grep $playerTime' '$playerAMPM $playerDate"_Dealer_schedule" | awk -v var1="$playerDate" '{print "On "var1, "at " $1, $2, "the Roulette Dealer was: " $5, $6}'
        ;;    
    "B")
        grep $playerTime' '$playerAMPM $playerDate"_Dealer_schedule" | awk -v var1="$playerDate" '{print "On "var1, "at " $1, $2, "the Black Jack Dealer was: " $3, $4}'
        ;;
    "T")
        grep $playerTime' '$playerAMPM $playerDate"_Dealer_schedule" | awk -v var1="$playerDate" '{print "On "var1, "at " $1, $2, "the Texas Hold \047Em Dealer was: " $7, $8}'
        ;;
      *)
        echo "Invalid Casino game choice, please run program again."
        ;;
esac
echo
