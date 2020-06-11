FROM nginx:1.17.6-alpine

RUN rm -rf /usr/share/nginx/html/*

COPY --chown=101:101  ./build/  /usr/share/nginx/html/

CMD ["/bin/sh", "-c", "exec nginx -g 'daemon off;' "]
