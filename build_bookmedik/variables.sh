#!/bin/bash
sed -i "s/$this->user=\"root\";/$this->user=\"$MYSQL_USER\";/g" /var/www/html/core/controller/Database.php
sed -i "s/$this->pass=\"\";/$this->pass=\"$MYSQL_PASSWORD\";/g" /var/www/html/core/controller/Database.php
sed -i "s/$this->host=\"localhost\";/$this->host=\"$DATABASE_SERVER\";/g" /var/www/html/core/controller/Database.php
sed -i "s/$this->ddbb=\"bookmedik\";/$this->ddbb=\"$MYSQL_DATABASE\";/g" /var/www/html/core/controller/Database.php
apache2ctl -D FOREGROUND
