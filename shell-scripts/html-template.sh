#!/bin/sh

INDEX=./index.html
JS_FOLDER=./js
CSS_FOLDER=./css
JS_FILE=./js/main.js
CSS_FILE=./css/style.css

HTML_CHECK() {
# HTML FILE CHECK
if ! [ -f "$INDEX" ]; then
    echo "index.html doesn't exist and will be created"
    command touch $INDEX
    return
else
    echo "index.html exists"
fi

return
}

JS_CHECK() {
# JS FOLDER/FILE CHECK
if ! [ -d "$JS_FOLDER" ]; then
    echo "javascript folder doesn't exist and will be created including main.js"
    command mkdir $JS_FOLDER
    command touch $JS_FILE
    return
elif ! [ -f "$JS_FILE" ]; then
    echo "main.js does not exist and will be created"
    command touch $JS_FILE
    return
else
    echo "javascript directory and file exist"
fi

return
}

CSS_CHECK() {
# CSS FOLDER/FILE CHECK
if ! [ -d "$CSS_FOLDER" ]; then
    echo "CSS folder doesn't exist and will be created including style.css"
    command mkdir $CSS_FOLDER
    command touch $CSS_FILE
    return
elif ! [ -f "$CSS_FILE" ]; then
    echo "style.css does not exist and will be created"
    command touch $CSS_FILE
    return
else
    echo "css directory and file exist"
fi

return
}

echo "Checking for existing files"
echo
HTML_CHECK
JS_CHECK
CSS_CHECK
echo
echo "Files created. Would you like to echo a template into your HTML? [y/N]"
read -r response

if [ "$response" = "y" ] || [ "$response" = "Y" ]; then
echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/style.css">
    <script defer src="./js/main.js"></script>
</head>
<body>
    
</body>
</html>' >> $INDEX
    echo "base template added to index.html"
else
    echo "not adding base template to index.html"
fi