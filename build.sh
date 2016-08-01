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

# Pass 0: Index the documents we need to publish
FILES=()
HTMLS=()
while read -d $'\0' FILE
do
	FILES+=("$FILE")
	# Replace extension .md -> .html, and drop the src/ prefix.
	HTML_FILE=`echo "$FILE" | sed -e 's/\.md$/.html/' -e 's/^src\///'`
	HTMLS+=("$HTML_FILE")
done < <(find src -type f -name "*.md" -print0)

MAX_I=`expr ${#FILES[@]} - 1`

# Pass 1: Generate the menu contents
cp src/header.html $TMP_DIR/
echo "<div id=\"menu\">" >> $TMP_DIR/header.html
for i in `seq 0 $MAX_I`
do
	echo "<a href=\"/${HTMLS[$i]}\">${HTMLS[$i]%.html}</a><br />" >> $TMP_DIR/header.html
done
echo "</div>" >> $TMP_DIR/header.html

# Pass 2: Generate the remaining web contents, incorporating a full menu.html now
for i in `seq 0 $MAX_I`
do
	pandoc -s -B $TMP_DIR/header.html "${FILES[$i]}" -o "$TMP_DIR/${HTMLS[$i]}"
done

# Now publish any resources that might be left in the src tree (images, javascript, etc)
rsync -a src/ $TMP_DIR/

# And now we do a local hack to publish map status data
ln -s /srv/www/hamwan.org/map/status/current.json $TMP_DIR/map/status.json

# And do a not-quite-atomic-but-pretty-fast switchover of the live website to the new version
rm out
ln -s $TMP_DIR out

# And return the user to their normal working directory
popd >/dev/null
