#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon -t --no-align -c"

# delete old record
# echo $($PSQL 'TRUNCATE  customers, appointments')

echo -e "\n~~~~~ MY SALON ~~~~~\n"

echo -e "Welcome to My Salon, how can I help you?\n"


PRINT_SERVICE() {
  $PSQL "SELECT * FROM services" | while IFS="|" read SERVICE_ID_SHOW SERVICE_NAME_SHOW
  do
    if [[ -n $SERVICE_ID_SHOW ]]
    then
      echo "$SERVICE_ID_SHOW) $SERVICE_NAME_SHOW"
    fi
  done
}

PRINT_SERVICE

# while : ; do
#   read SERVICE_ID_SELECTED
#   SERVICE_NAME=$($PSQL "SELECT service_id FROM services WHERE service_id = $SERVICE_ID_SELECTED")
#   if [[ -z $SERVICE_NAME ]]
#   then
#     echo -e "\nI could not find that service. What would you like today?"
#     PRINT_SERVICE
#   else
#     break
#   fi
# done

while [ -z $SERVICE_NAME ]; do
  read SERVICE_ID_SELECTED
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
  
  if [[ -z $SERVICE_NAME ]]
  then
    echo -e "\nI could not find that service. What would you like today?"
    PRINT_SERVICE
  fi
done

echo -e "\nWhat's your phone number?"
read CUSTOMER_PHONE

IFS="|" read CUSTOMER_ID CUSTOMER_NAME <<< $($PSQL "SELECT customer_id, name FROM customers WHERE phone = '$CUSTOMER_PHONE'")
if [[ -z $CUSTOMER_ID ]]
then
  echo -e "\nI don't have a record for that phone number, what's your name?"
  read CUSTOMER_NAME
  INSERT_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES ('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
  IFS="|" read CUSTOMER_ID CUSTOMER_NAME <<< $($PSQL "SELECT customer_id, name FROM customers WHERE phone = '$CUSTOMER_PHONE'")
fi

echo -e "\nWhat time would you like your cut, $CUSTOMER_NAME"
read SERVICE_TIME

INSERT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES ($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."