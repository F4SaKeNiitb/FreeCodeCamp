#!/bin/bash
PSQL='psql --username=freecodecamp --dbname=number_guess -t --tuples-only -c'
echo "Enter your username:"
read USERNAME
if [[ -z $($PSQL "select * from guess where username='$USERNAME'") ]]
then
echo "Welcome, $USERNAME! It looks like this is your first time here."
else
echo $($PSQL "select count(*),min(guesses) from guess where username='$USERNAME' group by username") | while read COUNT BAR MIN
do
echo "Welcome back, $USERNAME! You have played $COUNT games, and your best game took $MIN guesses."
done
fi
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
COUNT=0
echo "Guess the secret number between 1 and 1000:"
read guess
((COUNT++))
while [[ $guess != $SECRET_NUMBER ]]
do
if [[ $guess =~ ^[0-9]+$ ]]
then
if [[ $guess<$SECRET_NUMBER ]]
then
echo "It's higher than that, guess again:"
elif [[ $guess>$SECRET_NUMBER ]]
then
echo "It's lower than that, guess again:"
fi
else
echo "That is not an integer, guess again:"
fi
read guess
((COUNT++))
done
USER_ID_RESULT= $($PSQL "insert into guess(username,guesses) values('$USERNAME',$COUNT)")
echo "You guessed it in $COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
