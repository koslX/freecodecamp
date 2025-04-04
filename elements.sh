#! /bin/bash

PSQL="psql -X --username=freecodecamp --dbname=periodic_table  --tuples-only -c"

  if [[ $# == 0 ]]
  then
    echo "Please provide an element as an argument." 
    exit 0
  fi
  
  if [[ $1 =~ ^[0-9]+$ ]]; then
    EL_DETAILS=$($PSQL "select e.atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius from elements as e left join properties as p on e.atomic_number = p.atomic_number left join types as t on t.type_id = p.type_id where e.atomic_number = $1")  
  else
    EL_DETAILS=$($PSQL "select e.atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius from elements as e left join properties as p on e.atomic_number = p.atomic_number left join types as t on t.type_id = p.type_id where (e.symbol = '$1' or e.name = '$1')")  
  fi

  if [[ -z $EL_DETAILS ]]
  then
    echo "I could not find that element in the database."
    exit 0
  else
    read -r AN BAR NAM BAR SYMBOL BAR TYPE BAR AM BAR MP BAR BP <<< $EL_DETAILS 
    echo "The element with atomic number $AN is $NAM ($SYMBOL). It's a $TYPE, with a mass of $AM amu. $NAM has a melting point of $MP celsius and a boiling point of $BP celsius."
  fi


  
  