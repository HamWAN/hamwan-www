#!/bin/bash
if [[ $# -ne 4 ]]
then
	echo "Saves TiKi WiKi pages directly from the database into files"
	echo "Usage: $0 <username> <password> <database> <target dir>"
	exit
fi

MYSQL="mysql -N -u '$1' -p'$2' '$3' | sed 's/\\r\\\\n/\\n/g'"
PAGES=()
while read page
do
	PAGES+=("$page")
done < <(echo "select pageName from tiki_pages" | eval $MYSQL)
echo "${#PAGES[@]} TiKi WiKi pages being saved to $4"
mkdir -p "$4"
for i in `seq 0 $(expr ${#PAGES[@]} - 1)`
do
	echo -n .
	PAGE="${PAGES[$i]}"
	echo "select data from tiki_pages where pageName='$PAGE'" | eval $MYSQL > "$4/$PAGE.tiki"
done
echo
