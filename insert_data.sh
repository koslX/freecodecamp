#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals
do
  if [[ $year != year ]]
  then
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")

    if [[ -z $TEAM_ID ]]
    then
      # insert course
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$winner')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
          echo Inserted into teams, $winner
        fi
    fi

    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")

    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")

    if [[ -z $TEAM_ID ]]
    then
      # insert course
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$opponent')")
        if [[ $INSERT_COURSE_RESULT == "INSERT 0 1" ]]
        then
          echo Inserted into teams, $opponent
        fi
    fi

    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")

    INSERT_GAME_DATA=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) 
      VALUES('$year','$round','$WINNER_ID','$OPPONENT_ID','$winner_goals','$opponent_goals')")


  fi

  
  #echo "przeczytane winner: " + $winner
  #echo "przeczytanie opponent: " + $opponent
done
