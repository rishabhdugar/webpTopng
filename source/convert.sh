for file in *; do 
    if [ -f "$file" ]; then 
        NAME=`basename $file .webp`
	echo "$file converting"
	../libwebp-1.1.0-rc2-mac-10.15/bin/dwebp $file -o ../converted/$NAME.png
	echo "$file converted"
    fi 
done
