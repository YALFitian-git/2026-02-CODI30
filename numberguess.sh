guessAttempts=0
echo Input how big the guessing range should be:
read maxRangeVal
randint=$((RANDOM % $maxRangeVal + 1)) #Generate a random number from 1 to the maximum range value set by the user.
echo Guess a number from 1 to $maxRangeVal:
read number
while [ $number != $randint ]
do
if [[ $number < $randint ]]
then
clear
((guessAttempts++))
echo higher, guess again:
read number
elif [[ $number > $randint || $number > 100 ]] #Fixes a bug where incorrectly guessing 100 would appear as higher.
then
clear
((guessAttempts++))
echo lower, guess again:
read number
fi
done
clear
echo well done.
echo Attempts: $guessAttempts
