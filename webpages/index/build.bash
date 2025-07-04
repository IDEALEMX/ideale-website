#!/bin/bash

html="../../html-templates/main-template.html"
name="index.html"

$(bash ../../ssg/ssg.bash ./format.txt "$html" > ../../renders/"$name")
