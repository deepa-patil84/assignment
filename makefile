all: README.md

README.md: guessinggame.sh
	echo "# THE Unix Workbench git assignment " > README.md
	echo "##Assignment to guess number of files in directory" >> README.md
	echo -n "**Make run on** : " >> README.md
	date +'%d-%h-%Y %r %Z' >> README.md
	echo -n -e "\n**Lines of code in scipt guessinggame.sh** : " >> README.md
	cat guessinggame.sh | wc -l  >> README.md

clean:
	rm README.md

