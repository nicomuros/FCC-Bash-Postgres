#!/bin/bash
# Program to tell a persons fortune
echo -e "\n~~ Fortune Teller ~~\n"
RESPONSES=(
  "Yes"
  "No"
  "Maybe"
  "Outlook good"
  "Don't count on it"
  "Ask again later"
  )

N=$((RANDOM%6))

GET_FORTUNE(){
  if [[ ! $1 ]]
  then
  echo -e "\nAsk a yes or no question:"
  else
  echo -e "\nTry again. Make sure it ends with a question mark:"
  fi
}
GET_FORTUNE
read QUESTION
until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE again
  read QUESTION
done

echo -e "\n"${RESPONSES[$N]}