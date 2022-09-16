#stage 打包
FROM klakegg/hugo AS build
COPY . .
RUN hugo --minify

#stage 运行
FROM nginx:latest AS runtime
COPY --from=build /src/public /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
EXPOSE 80