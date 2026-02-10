guessAttempts=0
clear
echo Input how big the guessing range should be:
read maxRangeVal
clear
while [[ -z "$maxRangeVal" ]]
do
clear
echo invalid input, try again:
read maxRangeVal
done
randint=$((RANDOM % $maxRangeVal + 1)) #Generate a random number from 1 to the maximum range value set by the user.
echo Guess a number from 1 to $maxRangeVal:
read number
while [ $number != $randint ] || [[ -z "$number" ]]
do
if [[ $number < $randint && -n $number ]] #Fixes a bug where giving empty input is seen as lower than the random number.
then
clear
((guessAttempts++))
echo higher, guess again:
read number
elif [[ $number > $randint || $number > 100 ]] #Fixes a bug where incorrectly guessing 100 would appear as lower than the number where it is not.
then
clear
((guessAttempts++))
echo lower, guess again:
read number
elif [[ -z $number ]] #Checks if input is empty and returns invalid input.
then
clear
echo invalid input, guess again:
read number
fi
done
clear
echo well done.
echo Attempts: $guessAttempts
