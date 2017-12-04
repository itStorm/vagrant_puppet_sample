#!/bin/bash

apt-get update
apt-get -y purge apache2
apt-get -y upgrade
apt-get -y install ruby
apt-get -y install puppet

gem install r10k
cd www/vagrant/puppet/ && r10k puppetfile install
