#!/bin/bash
PSQL="psql --username=postgres --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
else
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    IFS="|" read ATOMIC_NUMBER SYMBOL ELEMENT_NAME <<< $($PSQL "SELECT * FROM elements WHERE atomic_number = $1")
  else
    IFS="|" read ATOMIC_NUMBER SYMBOL ELEMENT_NAME <<< $($PSQL "SELECT * FROM elements WHERE symbol = '$1' OR name = '$1'")
  fi

  if [[ -n $ATOMIC_NUMBER ]]
  then
    IFS="|" read TYPE MASS MELTING_POINT BOILING_POINT <<< $($PSQL "SELECT t.type, p.atomic_mass, p.melting_point_celsius, p.boiling_point_celsius FROM properties p JOIN types t ON p.type_id = t.type_id WHERE p.atomic_number = '$ATOMIC_NUMBER'")
    echo "The element with atomic number $ATOMIC_NUMBER is $ELEMENT_NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $ELEMENT_NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
  else
    echo "I could not find that element in the database."
  fi
fi
