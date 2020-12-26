all: build

build:
	echo "Title of The Project: Guessing Game" > README.md
	echo "" >> README.md
	echo "Date and Time of Run: " >> README.md
	date >> README.md
	echo "" >> README.md
	echo "Number of Lines of Code: " >> README.md
	wc -l guessinggame.sh  >> README.md

clean: 
	rm README.md
