VERSION=$(date +%Y%m%d%H%M)
sed -i "s/style\.css\(?v=[0-9]*\)\?/style.css?v=$VERSION/" ../*.html
