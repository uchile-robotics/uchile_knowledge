#!/bin/bash
#Ejemplo? ./CreateMapperTables.sh GermanOpen2017/manipulation_locations.csv
#Number,Location,Category
#1,Dinner table,
#4,Kitchencounter,Drink

INPUT=$1
OLDIFS=$IFS
IFS=,

manipulation_table='<manipulation_tables> = '
manipulation_tablemaqui='<manipulation_tables> = '

categories='<categories> = '
categoriesmaqui='<categories> = '
echo "#length, with, height" >> TablesInformation.yaml

[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read num tabl cat 
do
	echo "Table : $tabl"
	tabl=`echo "$tabl" | tr '[:upper:]' '[:lower:]' | sed 's/[[:space:]]*$//'`
	tablCamel=`echo "$tabl" | tr '[:lower:]' '[:upper:]'`
	tabl2="${tabl/ /_}"
	tablCamel2="${tablCamel/ /_}"
	if echo "$tabl" | grep -q " "; then
		echo "$tabl: $tabl2" >> ParserNames.yaml
	fi
	tabl2="$tabl"
	tablCamel2="$tablCamel"
	echo "category : $cat"
	cat=`echo "$cat" | tr '[:upper:]' '[:lower:]' | sed 's/[[:space:]]*$//'`
	catCamel=`echo "$cat" | tr '[:lower:]' '[:upper:]'`
	cat="${cat/ /_}"
	catCamel="${catCamel/ /_}"
	if [[ -n $cat ]];then
		categories=$categories$catCamel" | "
		categoriesmaqui=$categoriesmaqui$cat" | "
	fi
	manipulation_table=$manipulation_table$tablCamel" | "
	manipulation_tablemaqui=$manipulation_tablemaqui$tabl" | "

	echo "$tabl: [1.20, 0.50, 0.75]" >> TablesInformation.yaml

done < $INPUT
IFS=$OLDIFS

echo $manipulation_table";" >> diccionary.txt
echo $manipulation_tablemaqui";" >> diccionary.txt

echo $categories";" >> diccionary.txt
echo $categoriesmaqui";" >> diccionary.txt