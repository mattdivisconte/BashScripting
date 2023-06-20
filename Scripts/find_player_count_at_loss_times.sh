#!/bin/bash

# finds files with a - (loss) that starts with any date followed by _win_loss_player_data .. then takes columns 4 to the end and prints the data on individual lines
# then replaces , with whitespace, then takes all columns and puts them on individual lines again (because the commas caused double
# names on one line) then sorts alphabetically then counts the number of duplicate lines then sorts again by number then shows the 
# top 10 lines which should have the player that played the most during a game loss

grep "-" *_win_loss_player_data | awk '{for (i=4; i<=NF; i++) print $i}' | sed s/","/" "/g | awk '{for (i=1; i<=NF; i++) print $i}' | sort | uniq -c | sort | head > player_count_at_loss_times
