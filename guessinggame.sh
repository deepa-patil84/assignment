
echo "Guessing game assignment"

function guessnumberoffiles {

	echo "Guess the number of files in this directory :"
	read number

        #to find the number of files present
        num_of_files=$(ls -lrt | grep -v total | wc -l)
	re='^[0-9]+$'

        while [[ $num_of_files -ne $number ]]
        do
                if ! [[ $number =~ $re ]]
                then
			echo "Invalid input. Enter only digits"
                        read number
		elif [[ $num_of_files -gt $number ]]
		then
			echo "Guessed number incorrect and is too low"
                        echo "Take one more guess..."
                        read number
		elif [[ $num_of_files -lt $number ]]
                then
			echo "Guessed number incorrect and is too high"
                        echo "Take one more guess..."
                        read number

                fi
        done
        if [[ $num_of_files -eq $number ]] 
        then 
		echo "CONGRATULATIONS.Your guess is correct"
                echo "Correct number of files : $num_of_files"
                echo "Files in directory " && ls 
	fi

}

guessnumberoffiles
