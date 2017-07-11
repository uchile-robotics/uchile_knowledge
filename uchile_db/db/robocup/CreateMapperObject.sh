#!/bin/bash
#ejemplo : ./CreateMapperObject.sh GermanOpen2017/Objects/

echo "#Cylinder :::> name : [diameter(scale.x =scale.y), height (scale.z) ]" >> ObjectInformation.yaml


dirlist=(${1}*)
obj='<small_objects> = '
objmaqui='<small_objects> = '
for dir in "${dirlist[@]}"; do 
	echo "$dir"; 
	onlyname="${dir/$1/}"
	onlyname="${onlyname/.jpg/}"
	nameobj=${onlyname%-*}  
	categobj=${onlyname#*-} 
	nameobj=`echo "$nameobj" | tr '[:upper:]' '[:lower:]' | sed 's/[[:space:]]*$//'`
	nameCamel=`echo "$nameobj" | tr '[:lower:]' '[:upper:]'`
	categobj=`echo "$categobj" | tr '[:upper:]' '[:lower:]' | sed 's/[[:space:]]*$//' | sed 's/^[[:space:]]*//'`

	nameobj2="${nameobj/ /_}"
	nameCamel2="${nameCamel/ /_}"
	categobj2="${categobj/ /_}"

	if echo "$nameobj" | grep -q " "; then
		echo "$nameobj: $nameobj2" >> ParserNames.yaml
	fi
	if echo "$categobj" | grep -q " "; then
		echo "$categobj: $categobj2" >> ParserNames.yaml
	fi
	nameobj2="$nameobj"
	nameCamel2="$nameCamel"
	categobj2="$categobj"

	if echo "$nameobj" | grep -q ","; then
	  echo "OJO!! hay que separarlos";
	  echo "$nameobj: [ 0.15, 0.15]" >> ObjectInformation.yaml
	else
	  echo "$nameobj: [ 0.15, 0.15]" >> ObjectInformation.yaml
	fi
	obj=$obj$nameCamel" | "
	objmaqui=$objmaqui$nameobj" | "
done
obj=$obj";"
objmaqui=$objmaqui";"

echo $obj >> diccionary.txt
echo $objmaqui >> diccionary.txt