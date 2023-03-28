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

  #install PHP 8.1 using the following command:
  sudo apt -y install php8.1

  #Check the version installed:
  php -v

  #required php extensions for ilearn-developer
  sudo apt-get install -y php8.1 php8.1-bcmath php8.1-ctype php8.1-fileinfo php8.1-json php8.1-mbstring php8.1-opcache php8.1-pdo php8.1-tokenizer php8.1-xml php8.1-pgsql

  #suggestions of the most common modules you will most likely want to install:
  sudo apt-get install -y php8.1-cli php8.1-json php8.1-common php8.1-mysql php8.1-zip php8.1-gd php8.1-mbstring php8.1-curl php8.1-xml php8.1-bcmath

  # Additional PHP extensions
  sudo apt-get install php8.1-cgi php8.1-intl -y

  # Enable PHP 8.1
  sudo a2enmod php8.1


#List php versions installed on machine
sudo update-alternatives --list php

#Disable current PHP versions
sudo a2dismod php*

#Enable PHP 8.1
sudo a2enmod php8.1

#Set PHP 8.1 as default version
sudo update-alternatives --set php /usr/bin/php8.1

#Alternatively, you can run the following command to set which system wide version of PHP you want to use by default.
#sudo update-alternatives --config php

#If you have installed other PHP extensions, set them as default as well.
#sudo update-alternatives --set phar /usr/bin/phar5.6

#Verify PHP 8.1 is the default version
php -v

echo "PHP 8.1 and required extensions successfully installed"
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
