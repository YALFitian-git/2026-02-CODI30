#!/bin/bash
first_val="NOT SET"
second_val="NOT SET"
operator="NOT SET"
menu_options(){
	clear
	echo -e "
	|Choose An Option|
	------------------
	|
	| 1) Set/Change First Number: ($first_val)
	|
	| 2) Set/Change Second Number: ($second_val)
	|
	| 3) Set/Change Operator ( + - * / ): ($operator)
	|
	| 4) Calculate ($first_val $operator $second_val)
	|
	| 5) Exit
	|
	"
}

check_user_input(){
 read -p "Select Option: " input 

 case $input in 
 	
 	1)
 		read -p "Input the value of your first number: " firstVal
 		menu_options
 		check_user_input
 		;;
 	2)
 		read -p "Input the value of your second number: " secondVal
 		menu_options
 		check_user_input
 		;;
 	3)
 		read -p "Enter a valid operator: " operator
 		menu_options
 		check_user_input
 		;;
 	4)
 		case $operator in

 		+)
 			echo $(($first_val + $second_val))
 			;;
 		-)
 			echo $(($first_val - $second_val))
 			;;
 		"*")
 			echo $(($first_val * $second_val))
			;;
		/)
			echo $(($first_val / $second_val))
			;; 
		*)
			echo "Invalid operator. Please select a valid operator."		
		esac
 		check_user_input
 		;;
 	5)
 		clear
 		exit
 		;;
 	*)
 		echo "Invalid Input. "
 		check_user_input
 		;;

esac
}


menu_options
check_user_input
echo "The result is" $result
