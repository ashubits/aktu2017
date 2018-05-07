sudo find . -name "*.apk" | while read filename; do apktool d "$filename"; done;

