#!/bin/bash
#Apache
./apache2.sh
#Mysql
./mysql.sh
#Git
./git.sh
#Composer
./composer.sh
#PHP
./php.sh

sudo chown -R user:user /var/www/html

#Phpmyadmin
./phpmyadmin.sh
#mongodb
./mongodb.sh
#memcached
./memcached.sh
#vscode
./vscode.sh
