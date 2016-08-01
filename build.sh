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

# Pass 1: Generate the menu.html contents
find src -type f -name "*.md" -print0 | while read -d $'\0' FILE
do
	HTML_FILE=`echo "$FILE" | sed -e 's/\.md$/.html/' -e 's/^src\///'` # Replace extension .md -> .html
	echo "<a href=\"/$HTML_FILE\">$HTML_FILE</a>" >> $TMP_DIR/menu.html
done

# Pass 2: Generate the remaining web contents, incorporating a full menu.html now
find src -type f -name "*.md" -print0 | while read -d $'\0' FILE
do
	HTML_FILE=`echo "$FILE" | sed -e 's/\.md$/.html/' -e 's/^src\///'` # Replace extension .md -> .html
	pandoc -s -B $TMP_DIR/menu.html "$FILE" -o "$TMP_DIR/$HTML_FILE"
done

# Now publish any resources that might be left in the src tree (images, javascript, etc)
rsync -a src/ $TMP_DIR/

# And do a not-quite-atomic-but-pretty-fast switchover of the live website to the new version
rm out
ln -s $TMP_DIR out

# And return the user to their normal working directory
popd >/dev/null
