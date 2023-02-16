FROM alpine:3.17

RUN apk upgrade && \
    apk add apache2 apache2-ctl

COPY index.html /var/www/localhost/htdocs/

ENV PORT=80

EXPOSE 80/tcp

ENTRYPOINT ["/usr/sbin/apachectl", "-c","ServerName localhost", "-X"]
