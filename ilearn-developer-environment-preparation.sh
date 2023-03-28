#!/bin/bash

####################################################################################
# Install PHP and required extensions

  #install software-properties-common, which adds management for additional software sources:
  sudo apt -y install software-properties-common

  #install the repository ppa:ondrej/php, which will give you all your versions of PHP:
  sudo add-apt-repository ppa:ondrej/php

  #If you are using apache2, you are advised to add ppa:ondrej/apache2
  sudo add-apt-repository ppa:ondrej/apache2

  #update apt-get again so your package manager can see the newly listed packages:
  sudo apt-get update

  #install PHP 7.3 using the following command:
  sudo apt -y install php7.3

  #Check the version installed:
  php -v

  #required php extensions for ilearn-developer
  sudo apt-get install -y php7.3 php7.3-bcmath php7.3-ctype php7.3-fileinfo php7.3-json php7.3-mbstring php7.3-opcache php7.3-pdo php7.3-tokenizer php7.3-xml php7.3-pgsql

  #suggestions of the most common modules you will most likely want to install:
  sudo apt-get install -y php7.3-cli php7.3-json php7.3-common php7.3-mysql php7.3-zip php7.3-gd php7.3-mbstring php7.3-curl php7.3-xml php7.3-bcmath

  # Install PHP 7.3 and required extensions
  sudo apt-get install php7.3 php7.3-cli php7.3-mysql php7.3-curl php7.3-json php7.3-cgi php7.3-intl -y

  # Enable PHP 7.3
  sudo a2enmod php7.3


#List php versions installed on machine
sudo update-alternatives --list php

#Disable current PHP versions
sudo a2dismod php*

#Enable PHP 7.3
sudo a2enmod php7.3

#Set PHP 7.3 as default version
sudo update-alternatives --set php /usr/bin/php7.3

#Alternatively, you can run the following command to set which system wide version of PHP you want to use by default.
#sudo update-alternatives --config php

#If you have installed other PHP extensions, set them as default as well.
#sudo update-alternatives --set phar /usr/bin/phar5.6

#Verify PHP 7.3 is the default version
php -v

echo "PHP 7.3 and required extensions successfully installed"
###################################################################################################

# Install PostgreSQL
sudo apt-get install -y postgresql postgresql-contrib

# Install Apache or NGINX
sudo apt-get install -y apache2

# Install NodeJS v16
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install PHP Composer
sudo apt-get install -y curl unzip
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer