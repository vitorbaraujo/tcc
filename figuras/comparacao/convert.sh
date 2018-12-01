for f in *; do
    if [ ! -z $(echo $f | grep -E "*.png$") ]; then
        filename=$(echo $f | sed -E "s/(.*).png/\1/g")

        convert $f eps2:$filename.eps
    fi
done
