FROM debian
MAINTAINER Juan Antonio Reifs Ramirez "initiategnat9@gmail.com"

RUN apt-get update && apt-get install -y apache2 php php-mysql git && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN rm -r /var/www/html/* && git clone https://github.com/evilnapsis/bookmedik /var/www/html

ADD variables.sh /usr/local/bin

EXPOSE 80

ENV DATABASE_SERVER=book_sql MYSQL_ROOT_PASSWORD=root MYSQL_USER=book_user MYSQL_PASSWORD=book_passwd MYSQL_DATABASE=bookmedik

CMD ["variables.sh"]
