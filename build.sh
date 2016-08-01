#!/bin/bash
pushd `dirname $0` >/dev/null
LIVE_DIR=`ls -ld out | awk -F"-> " '{print $2}'`
if [[ $LIVE_DIR == "out-a" ]]
then
	TMP_DIR=out-b
else
	TMP_DIR=out-a
fi
rm -rf $TMP_DIR
mkdir $TMP_DIR
find src -type f -name "*.md" -print0 | while read -d $'\0' FILE
do
	HTML_FILE=`echo "$FILE" | sed -e 's/\.md$/.html/' -e 's/^src\///'` # Replace extension .md -> .html
	pandoc -s "$FILE" -o "$TMP_DIR/$HTML_FILE"
done
rsync -a src/ $TMP_DIR/
rm out
ln -s $TMP_DIR out
popd >/dev/null
