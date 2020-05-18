
title.md:title.txt
	echo "-Title of the project :##GUESSING GAME" > title.md
	echo "Date and the time : " >>title.md
	date >> title.md
	echo "Number of lines in the file "game.sh" :  " >> title.md 
	wc -l game.sh | egrep -o "[0-9]+" >> title.md
	
title.txt:
	touch title.md
