#!/bin/bash
PSQL="psql --username=postgres --dbname=periodic_table -t --no-align -c"

echo Please provide an element as an argument.
read INPUT

ELEMENT=$($PSQL "SELECT * FROM elements WHERE atomic_number = '$INPUT' OR symbol = '$INPUT' OR name = '$INPUT'")

if [[ -n $ELEMENT ]]
then
else
  echo 
fi

The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.