#!/bin/bash
# exit immediately upon failure
set -e

#from http://joyful.com/blog/2014-05-03-creating-well-behaved-hakyll-blog-posts.html
DIR=posts/
AUTHOR="My Name"
TITLE=${*:-TITLE}
SLUG=${TITLE// /-}
DATE=`date +"%Y-%m-%d"`
TIME=`date +"%Y-%m-%d %H:%M:%S%Z"`
FILE=_$DATE-$SLUG.md
cd $DIR
echo creating $FILE
cat <<EOF >>$FILE 
---
title:     $TITLE
tags:      TAG1, TAG2
author:    $AUTHOR
published: $TIME
---

EOF
