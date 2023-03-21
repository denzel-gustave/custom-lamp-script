#!/bin/bash

# Update package manager
sudo apt-get update

# Install Apache 2
sudo apt-get install apache2 -y

# Install MySQL 5
#sudo apt-get install mysql-server-5.7 -y

#############################################################################################################################################################
# Check if PHP 7.2 is installed
if ! [ -x "$(command -v php7.2)" ]; then
  # Disable current PHP version
  sudo a2dismod php*

  # Install PHP 7.2
  #sudo apt-get update
  #sudo apt-get install -y php7.2

  #install software-properties-common, which adds management for additional software sources:
  sudo apt -y install software-properties-common

  #install the repository ppa:ondrej/php, which will give you all your versions of PHP:
  sudo add-apt-repository ppa:ondrej/php

  #If you are using apache2, you are advised to add ppa:ondrej/apache2
  sudo add-apt-repository ppa:ondrej/apache2

  #update apt-get again so your package manager can see the newly listed packages:
  sudo apt-get update

  #install PHP 7.2 using the following command:
  sudo apt -y install php7.2

  #Check the version installed:
  php -v

  #suggestions of the most common modules you will most likely want to install:
  sudo apt-get install -y php7.2-cli php7.2-json php7.2-common php7.2-mysql php7.2-zip php7.2-gd php7.2-mbstring php7.2-curl php7.2-xml php7.2-bcmath

  # Install PHP 7.2 and required extensions
  sudo apt-get install php7.2 php7.2-cli php7.2-mysql php7.2-curl php7.2-json php7.2-cgi php7.2-intl -y

  # Enable PHP 7.2
  sudo a2enmod php7.2

  echo "PHP 7.2 has been installed and enabled."
else
  echo "PHP 7.2 is already installed."
fi
#############################################################################################################################################################

# Install Mod Rewrite
sudo a2enmod rewrite

# Restart Apache
sudo service apache2 restart

# Install PhpMyAdmin
sudo apt-get install phpmyadmin -y

# Configure Apache for PhpMyAdmin
#sudo echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf

# Restart Apache
sudo service apache2 restart


#List php versions installed on machine
sudo update-alternatives --list php

#Disable current PHP versions
sudo a2dismod php*

#Enable PHP 7.2
sudo a2enmod php7.2

#Set PHP 7.2 as default version
sudo update-alternatives --set php /usr/bin/php7.2

#Alternatively, you can run the following command to set which system wide version of PHP you want to use by default.
#sudo update-alternatives --config php

#If you have installed other PHP extensions, set them as default as well.
#sudo update-alternatives --set phar /usr/bin/phar5.6

#Restart Apache web server
sudo systemctl restart apache2

#Verify PHP 7.2 is the default version
php -v

echo "LAMP installations complete!"
