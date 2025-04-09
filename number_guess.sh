#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guessing_db -t --no-align -c"

TO_GUESS=$((RANDOM % 1000 + 1)) 

echo -e "Enter your username:\n" 
read USER_NAME

USER=$($PSQL "SELECT * FROM users WHERE login='$USER_NAME'")

if [[ -z $USER ]]
then
  echo -e "Welcome, $USER_NAME! It looks like this is your first time here.\n"
  CREATE_USER_RESULT=$($PSQL "INSERT INTO users(login) VALUES('$USER_NAME')")
else
  NUMBER_PLAYED=$($PSQL "SELECT count(*) FROM games WHERE login='$USER_NAME'")
  BEST_GAME=$($PSQL "SELECT MIN(trials) FROM games WHERE login='$USER_NAME'")
  echo -e "Welcome back, $USER_NAME! You have played $NUMBER_PLAYED games, and your best game took $BEST_GAME guesses."

fi

echo -e "Guess the secret number between 1 and 1000:"
GUESS_NUM="abc"
TRIES_COUNTER=0

while [[ $GUESS_NUM != $TO_GUESS ]]
do
  read GUESS_NUM
  if [[ ! $GUESS_NUM =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
  else
    ((TRIES_COUNTER++))
    if [[ $GUESS_NUM -lt $TO_GUESS ]]; then
      echo "It's higher than that, guess again:"
    fi
    if [[ $GUESS_NUM -gt $TO_GUESS ]]; then
      echo "It's lower than that, guess again:"
    fi
    if [[ $GUESS_NUM -eq $TO_GUESS ]]; then
      echo -e "You guessed it in $TRIES_COUNTER tries. The secret number was $TO_GUESS. Nice job!"
      CREATE_GAME_LOG_RESULT=$($PSQL "INSERT INTO games(login, trials) VALUES('$USER_NAME', $TRIES_COUNTER)")
    fi
  fi
done
