FROM alpine

RUN apk add --update mini_httpd curl \
 && rm -rf /var/cache/apk/*

EXPOSE 80

COPY curl.sh /cgi-bin/curl.sh
COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["mini_httpd", "-d", "/cgi-bin/", "-c", "**.sh", "-D"]
