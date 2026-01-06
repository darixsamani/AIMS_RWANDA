
### function  question 1

function question_1 () {
	read -p "enter n: "  n
	s=0
	i=1
	if [ $1 == "odd" ]; then

		while [ $i -le $n ]
		do
			if [ $(($i%2)) -ne 0 ]; then
				s=$((s + i + 3))
			fi
			i=$((i+1))
		done

		echo "The sum S from 1 to $n is: $s "

	
	elif [ $1 == "even" ]; then

		while [ $i -le $n ]
		do
			if [ $(($i%2)) -eq 0 ]; then
				s=$((s + i + 3))
			fi
			i=$((i+1))

		done

		echo "The sum S from 1 to $n is $s" 

	
	else
		echo "you provided a wrong input"
	fi
}
echo "Question 1 for even numbers"

question_1 "even"

echo "Question 1 for odd numbers"

question_1 "odd"

### function for question 2

function question_2 () {
	read -p "Enter the number of the day to want from 0 to 6: " d

	if [ $d -eq 0 ]; then
		echo "Monday"
	elif [ $d -eq 1 ]; then
		echo "Tuesday"
	elif [ $d -eq 2 ]; then
		echo "Wenesday"
	elif [ $d -eq 3 ]; then
		echo "Thrusday"
	elif [ $d -eq 4 ]; then
		echo "Friday"
	elif [ $d -ge 5 ] && [ $d -le 6 ]; then
		echo "Weekend"
	else
		echo "You provided a wrong input"
	fi
}

echo "Question 2"
question_2

## function for question 3

function question_3 () {
	read -p "Enter the number of month from 0 to 11: " m

	if [ $m -eq 0 ] || [ $m -eq 2 ] || [ $m -eq 4 ] || [ $m -eq 6 ] || [ $m -eq 7 ] || [ $m -eq 9 ] || [ $m -eq 11 ]; then
		echo "The number of days in $m is : 31"
	elif [ $m -eq 3 ] || [ $m -eq 5 ] || [ $m -eq 8 ] || [ $m -eq 10 ]; then
		echo "The number of days in $m month is 30"
	elif [ $m -eq 1 ]; then 
		echo "The number of days in $m month is 28 or 29"
	else
		echo "You provided the wrong input"
	fi
}

echo "Question 3"
question_3

### function for question 4

function question_4 () {
	name="Darix SAMANI SIEWE"
	echo "Diplay my name with for loop"
	for i in {1..3};
	do
		echo "$i my name is $name"
	done

	echo "Display my name with while loop"
	i=1

	while [ $i -lt 4 ];
	do
		echo "$i ny name is $name"
		i=$((i+1))
	done
}

echo "Queston 4"
question_4

###function for question 5

function question_5 () {
	read -p "Enter the first value of fibonnaci X0: " a
	read -p "Enter the second vaue of fibonnaci x1: " b
	fib=0
	x=0
	for i in  {1..15};
	do
		fib=$((a+b))
		echo "the $i terms of fibonnaci is : $fib"
		a=$b
		b=$fib
	done
}

echo "Question 5"
question_5

### function for question 6

function question_6 () {
	read -p "Enter the initiale value of X0: " a
	read -p "Enter the initiale value of X1: " b
	
	for i in {1..30};
	do
		s=$(echo "scale=4; 0.5*$b-3*$a" | bc)
		echo "The $i term is: $s"
		a=$b
		b=$s
	done
} 
echo "Question 6"
question_6

### function for question 7
#### option a


function question_7_a () {
	read -p "Enter the value of n: " n
	echo "using for loop"
	s=0
	for i in $(seq 1 $n);
	do
		s=$((s+i**2))
	done
	echo "the somme of the square of the first $n naturels numbers is: $s"
	s=0
	echo " using while loop"
	i=0
	while [ $i -le $n ]
	do
		s=$((s+i**2))
		i=$((i+1))
	done
	echo "The somme of the square of the first $n naturels numbers is: $s"

}

echo "Question 7 a "
question_7_a

### functiom for question 7
#### option b

function question_7_b () {
	read -p "Enter the value of M: " M

	echo "Version with for loop"
	n=0
	s=0
	for (( i=0 ; ; i++ ));
	do
		s=$((s+i**2))
		if [ $s -ge $M ]; then
			n=$i
			break
		fi
	done

	echo "The value of n using for loop is : $n"


	echo "Version with while loop"
	s=0
	i=0
	n=0
	while true
	do
		s=$((s+i**2))
		if [ $s -ge $M ]; then
			n=$i
			break
		fi
		i=$((i+1))
	done
	
	echo "The value of n using while loop is: $n"

}

echo "Question 7 b"
question_7_b

### function for question 8

function question_8 () {
	read -p "Enter de number between 0 and 9: " n
	read -p "Enter de number between 0 and 9: " N
	for i in $(seq 1 $N)
	do
		echo " $n X $i = $((n*i))"
	done
}

echo "Question 8"
question_8


### function for question 9

function question_9 () {
	echo "print all numbers from 0 to 40 that are multiples of 3, 7 or 11:"
	for i in {3..40}
	do
		if [ $(($i%3)) -eq 0 ] || [ $(($i%7)) -eq 0 ] || [ $(($i%11)) -eq 0 ]; then
			echo $i
		fi
	done
}

echo "Question 9"
question_9

### function for question 10

function question_10 () {
	read -p "Enter a integer between 0 and 9: " x
	while [ $x -lt 0 ] || [ $x -gt 9 ]
	do
		read -p "Please you need to enter a number between 0 and 9 incluse: " x
	done
	
	read -p "Enter a integer between 0 and 255: " max
	while [ $max -lt 0 ] || [ $max -gt 255 ]
	do
		read -p "Please you need to enter a number between 0 and 255 incluse: " max
	done

	echo "All mutilples of $x betwwen 0 and $max is: "
	for i in $(seq 1 $max)
	do
		if [ $(($i%x)) -eq 0 ]; then
			echo $i
		fi
	done

}

echo "Question 10"
question_10

