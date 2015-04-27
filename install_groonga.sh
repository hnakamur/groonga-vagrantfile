#!/bin/sh
set -e

sudo apt-get -y install software-properties-common
sudo add-apt-repository -y universe
sudo add-apt-repository -y ppa:groonga/ppa
sudo apt-get update
sudo apt-get -y install groonga \
    groonga-tokenizer-mecab \
    groonga-token-filter-stem \
    groonga-httpd
#sudo service groonga-httpd stop
#sudo rsync /vagrant/db/* /var/lib/groonga/db/
#sudo chown -R groonga: /var/lib/groonga/db/
#sudo sed -i 's|groonga_database /var/lib/groonga/db/db|groonga_database /var/lib/groonga/db/wikipedia_ja.db|' /etc/groonga/httpd/groonga-httpd.conf
#sudo service groonga-httpd start
