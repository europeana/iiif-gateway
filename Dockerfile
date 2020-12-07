# NB: ensure the version matches that in buildpack.yml
FROM nginx:mainline

LABEL Author="Europeana Foundation"
LABEL Email="development@europeana.eu"

COPY docker/env-nginx docker/rewrite-nginx-conf /usr/sbin/

COPY public /usr/share/nginx/html
COPY mime.types  /etc/nginx/
COPY nginx.conf.d/ /etc/nginx/nginx.conf.d/
COPY nginx.conf /etc/nginx/nginx.template.conf

RUN rewrite-nginx-conf

ENTRYPOINT ["env-nginx"]
