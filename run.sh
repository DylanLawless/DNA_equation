#!/bin/bash

# https://github.com/michaelravedoni/jekyll-book-framework
# brew install npm

# npm run dev
npm run build --watch | grep -v deprecated
npm run dev
sleep 4

open -a Safari http://127.0.0.1:4000

