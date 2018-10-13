all: README.md

README.md:

	echo "## Guessing Game\n" > README.md
	echo "The Unix Workbench by John Hopkins University Peer-graded Assignment\n" >> README.md
	echo -n "README.md created: " >> README.md
	date >> README.md
	echo -n "\nNumber of lines in guessinggame.sh file: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
