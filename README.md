# BashScripting
<h1>Bash Scripting Project to Parse Log Files to Identify Users</h1>

<h2>Description</h2>
For this project, we were tasked with explaining the losses that a fictional casino was experiencing.  
<br></br>
We were provided with log files of the players and dealers at the various casino games over the course of a week, and instructed to generate a variety of scripts to answer particular questions.

## My First Foray into Bash Scripting

1. [find_player_count_at_loss_times.sh](Scripts/find_player_count_at_loss_times.sh): parses the win/loss player data to identify which player was present during losses 
2. [Find_Roulette_Dealer_Date_Time_Manual.sh](Scripts/Find_Roulette_Dealer_Date_Time_Manual.sh): parses the dealer data to identify the dealer present during losses 
3. [grep_find_loss_times.sh](Scripts/grep_find_loss_times.sh): parses the win/loss player data to generate a file for input for Find_Roulette_Dealer_Date_Time_Automated.sh
4. [Find_Roulette_Dealer_Date_Time_Automated.sh](Scripts/Find_Roulette_Dealer_Date_Time_Automated.sh): script which uses the file created with grep_find_loss_times.sh as input to identify dealers working at times of losses
5. [roulette_dealer_finder_by_time.sh](Scripts/roulette_dealer_finder_by_time.sh): script to find the roulette dealer at the inputted date and time in the future
6. [roulette_dealer_finder_by_time_and_game.sh](Scripts/roulette_dealer_finder_by_time_and_game.sh): script to find the dealer of a particular game at a particular time, with my first attempt at ASCII "art" since my BBS days


<!-- 
<br />
Roulette Dealer Finder by Time and Game:  <br/>
<img src="https://imgur.com/a/OaZufZh" height="80%" width="80%" alt="Roulette Dealer Finder by Time and Game"/>
<br />
-->
