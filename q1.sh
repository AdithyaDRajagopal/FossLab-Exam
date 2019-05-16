printf "Enter the input:"
read N

declare -a A
max=0
q=0

for ((n=2; n<=N/2; n++))
do
	flag=0
	for ((i=2; i<=n/2; i++))	#Checks for prime numbers between 2 and (N/2)
	do
		p=$((n%i))
		if [[ $p -eq 0 ]]	#Checks if the number is divisible by any number other than 1
		then
			flag=1
			break
		fi
	done

	if [[ $flag == 0 ]]		#Checks if the number is prime or not
	then
		A[$q]=$n		#If prime, the number is stored in an array A
		q=$((q+1))
	fi
done

for ((t=2; t<=N; t++))			#Checks for number of factors between 2 and N
do
	nf=0
	for ((z=0; z<q; z++))
	do
		d=${A[$z]}
		p=$((t%d))
		if [[ $p -eq 0 ]]	#Checks the if the prime numbers in the array are the prime factors of the number
		then
			nf=$((nf+1))	#Counts the number of unique prime factors of the number
		fi
	done
	if [[ $max -lt $nf ]]		#Checks if the number of unique prime factors is maximum in the given range
	then
		max=$nf
	fi
done

echo "Maximum Number of unique prime factors:" $max	#Prints the maximum number of unique prime factors in the given range
