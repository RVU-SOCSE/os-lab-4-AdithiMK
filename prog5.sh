read -p "enter filename to create:" fname
if [ -f "$fname" ];then
echo "error:file exists"
else
read -p  "enter content" content
echo "$content">"$fname"
echo "file '$fname'created successfully"
fi

read -p "enter  source filename:" source
read -p "enter destination filename:" dest
if [ -f "$source" ]; then
cp "$source" "$dest"
echo "file copied successfully"
else
echo "error: source file doesnt exist" 
fi

read -p "enter filename to move:" source
read -p "enter  new filename:" dest
if [ -f "$source" ]; then
mv "$source" "$dest"
echo "file moved successfully"
else
echo "error: file does not exist"
fi

read -p "enter filename to remove:" source
if [ -f "$source" ]; then
rm "$source"
echo "file removed successfully"
else
echo "error: file does not exist"
fi

read -p "enter filename to display:" fname
if [ -f "$fname" ]; then
echo "content of'$fname':"
cat "$fname"
else
echo "error:file doesnt exist"
fi


