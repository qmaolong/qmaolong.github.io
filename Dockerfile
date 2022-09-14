FROM klakegg/hugo
RUN hugo --minify -t cleanwhite
