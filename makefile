all:: README.md


README.md::
	touch README.md

README.md:: guessinggame.sh
	echo "# This project is called The Guessing Game" >> README.md 
	echo
	echo "## README file generated on " >> README.md
	date +%Y-%m-%d:%H:%M >> README.md
	echo
	echo "## The number of program lines is" >> README.md
	echo "**" >> README.md
	wc -l < guessinggame.sh >> README.md
	echo "**" >> README.md


clean:
	rm README.md


