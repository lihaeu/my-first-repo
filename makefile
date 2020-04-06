README.md: guessinggame.sh
	echo "#The Assignment: Guessing Game" > README.md
	echo "####The make command was last executed:" >> README.md
	date >> README.md
	echo "####guessinggame.sh contains the following number of lines of code:" >> README.md
	egrep -v ^\s*$$ guessinggame.sh | wc -l | egrep -o [0-9]+ >> README.md
