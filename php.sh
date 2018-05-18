#!/bin/bash

read -p "Enter PHP version needed for memcahed driver eg(7.0) : " version

#sudo a2dismod php7.2
#sudo a2enmod php5.6
#sudo service apache2 restart

sudo apt-get install -y php$version libapache2-mod-php$version

sudo apt-get install -y php$version-mbstring php$version-mysql php$version-curl php$version-gd php$version-intl php-pear php$version-mcrypt php$version-oauth php$version-xml php$version-memcached php$version-mongo php$version-gettext php$version-dom

sudo a2enmod rewrite

sudo service apache2 restart

sudo update-alternatives --set php /usr/bin/php$version
sudo update-alternatives --set phar /usr/bin/phar$version
sudo update-alternatives --set phar.phar /usr/bin/phar.phar$version 
sudo update-alternatives --set phpize /usr/bin/phpize$version
sudo update-alternatives --set php-config /usr/bin/php-config$version
sudo phpenmod mcrypt
sudo phpenmod mbstring
sudo service apache2 restart

echo "PHP ".$version." Installed Successfully"
