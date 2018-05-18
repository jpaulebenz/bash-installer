#!/bin/bash


echo "sudo apt-get update"
sudo apt-get update
echo "sudo apt-get upgrade"
sudo apt-get upgrade
echo "sudo apt-get -y install memcached"
sudo apt-get -y install memcached
echo "sudo service memcached start"
sudo service memcached start
echo "sudo apt-get install php$version-memcached"
read -p "Enter PHP version needed for memcahed driver eg(7.0) : " version
sudo apt-get install php$version-memcached
echo "sudo service apache2 restart"
sudo service apache2 restart


