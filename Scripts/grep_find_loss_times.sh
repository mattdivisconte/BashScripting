#!/bin/bash

# grep searches for any loss of the casino house by looking for a negative value.  pipes this information into awk.. which then prints the first 4 characters of column 1, starting at 1.. prints a 
# space and the prints out the last 8 digits of column 1, starting at 7 characters in from the end and adds column 2 and exports to a file.

grep "-" *_win_loss_player_data | awk '{print substr($1,1,4) " " substr($1, length($1)-7,8) " " $2}' > day_time_of_losses

