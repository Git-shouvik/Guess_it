
README.md:title.txt
	echo "- *Title of the project :* **GUESSING GAME** " > README.md
	echo "- *Date and the time :* " >>README.md
	date >> README.md
	echo "- *Number of lines in the file "Game.sh" :* " >> README.md 
	wc -l Game.sh | egrep -o "[0-9]+" >> README.md
	
title.txt:
	touch README.md
