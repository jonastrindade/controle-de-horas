git clone https://github.com/jonastrindade/controle-de-horas.git

cd controle-de-horas

https://gorails.com/setup/ubuntu/20.04

ruby install:
sudo apt install ruby

dependencies install:
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn

rvm install:
sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.7.1
rvm use 2.7.1 --default
gem install bundler

rails install
gem install rails -v 6.0.2.2

mysql install:
sudo apt-get install mysql-server mysql-client libmysqlclient-dev
sudo mysql --execute="CREATE DATABASE controle_de_horas_development"
sudo mysql --execute="CREATE DATABASE controle_de_horas_test"
sudo mysql controle_de_horas_development < db/dump_development.sql
sudo mysql controle_de_horas_test < db/dump_test.sql

CREATE USER 'bduser'@'localhost' IDENTIFIED BY 'bduser';
GRANT ALL PRIVILEGES ON *.* TO 'bduser'@'localhost';

yarn add bootstrap@4.3.1 jquery popper.js
bundle install