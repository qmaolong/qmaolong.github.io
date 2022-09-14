FROM klakegg/hugo
COPY . .
RUN hugo --minify -t cleanwhite