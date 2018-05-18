#!/bin/bash

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927 
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service apache2 restart
sudo service mongod start
read -p "Enter PHP version needed for mongodb driver eg(7.0) : " version
sudo apt-get install php$version-mongo
sudo service apache2 restart

