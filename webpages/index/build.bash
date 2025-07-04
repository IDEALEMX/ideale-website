#!/bin/bash

name="index.html"
html="$HOME/website/html-templates/main-template.html"
css="style.css"

bash "$HOME/website/ssg/ssg.bash" "$HOME/website/webpages/index/format.txt" "$html" "$css" > "$HOME/website/renders/$name"
