# README
  Ruby version
  Ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x86_64-linux]

  Rails version
  Rails 6.0.3.2

  Services (job queues, cache servers, search engines, etc.)
  Rails s 

  How to
  how to install ruby, rails, node, yarn, banco: https://gorails.com/setup/ubuntu/19.04
  how to devise: https://guides.railsgirls.com/devise
  how to bootstrap: https://dev.to/somnathpaul/add-bootstrap-4-to-your-ruby-on-rails-6-application-ole


# CONTROLE DE HORAS

  Um sistema para controlar horários dos estagiários. Entre no link localhost:3000 faça seu cadastro ou login. São duas telas, 'Lançar horas' e 'Histórico de horários', na primeira você lança os horários dos dias trabalhados e na segunda são exibidos os horários já lançados.


# HOW TO

  Depois que clonar esse repositório, entre na pasta e realize a instalação seguindo os proximos passos, recomendo usar uma maquina virtual com Ubuntu 19 ou 20.

  cd controle-de-horas

  auxilio para instalação de ruby, rvm e rails: https://gorails.com/setup/ubuntu/20.04

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