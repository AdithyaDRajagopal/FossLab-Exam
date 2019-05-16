if [ $# -ne 1 ]; then				#Checks if the number of arguments is 1
	echo "Incorrect number of arguments"
	exit
fi

dir=`basename $dir`				#Stores directory name into dir

while [[ $dir -ne $1 ]]				#Checks if argument is equal to dir
do
	cd ..					#If argument is not equal to dir, go to previous directory
	dir=`basename $PWD`			#Stores new directory name into dir
	if [[ $dir -eq "exam" ]]; then		#Checks if directory name is exam
		echo $1 " does not exist"	#If current directory name is exam, the error message is printed
		exit
	fi
done

