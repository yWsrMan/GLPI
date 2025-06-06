#!/bin/bash

apt update && apt upgrade -y
apt install -y bzip2 composer


cd /var/lib/glpi_plugins
wget https://github.com/pluginsGLPI/formcreator/releases/download/2.13.10/glpi-formcreator-2.13.10.tar.bz2
tar -xvjf glpi-formcreator-2.13.10.tar.bz2

cd /var/lib/glpi_plugins/formcreator/
composer install --no-dev
