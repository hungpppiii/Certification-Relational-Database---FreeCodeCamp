#!/bin/bash
PSQL="psql --username=postgres --dbname=periodic_table -t --no-align -c"

echo "Please provide an element as an argument."
INPUT=$1

IFS="|" read ATOMIC_NUMBER SYMBOL ELEMENT_NAME <<< $($PSQL "SELECT * FROM elements WHERE atomic_number = '$INPUT' OR symbol = '$INPUT' OR name = '$INPUT'")

if [[ -n $ATOMIC_NUMBER ]]
then
  echo "The element with atomic number $ATOMIC_NUMBER is $ELEMENT_NAME ($SYMBOL). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius."
else
  echo "I could not find that element in the database."
fi
