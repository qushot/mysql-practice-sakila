# https://qiita.com/okumurakengo/items/727d15e3ab2d22cdb1f8
FROM mysql:8

ENV MYSQL_ROOT_PASSWORD=root

RUN apt-get update \
    && apt-get install -y wget unzip \
    && wget http://downloads.mysql.com/docs/sakila-db.zip \
    && unzip sakila-db.zip \
    && mv sakila-db/sakila-schema.sql /docker-entrypoint-initdb.d/01_sakila-schema.sql \
    && mv sakila-db/sakila-data.sql /docker-entrypoint-initdb.d/02_sakila-data.sql
