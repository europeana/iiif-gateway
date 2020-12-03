# NB: ensure the version matches that in buildpack.yml
FROM nginx:1.19.3

LABEL Author="Europeana Foundation"
LABEL Email="development@europeana.eu"

COPY docker/env-nginx docker/rewrite-nginx-conf /usr/sbin/

COPY public /usr/share/nginx/html
COPY mime.types nginx.conf.d /etc/nginx/
COPY nginx.conf /etc/nginx/nginx.template.conf

RUN rewrite-nginx-conf

ENTRYPOINT ["env-nginx"]
