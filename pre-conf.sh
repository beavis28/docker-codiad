#!/bin/bash
set -e

#download codiad 
cd /var/www
git clone https://github.com/Codiad/Codiad.git

 #apache2 conf
 a2enmod rewrite
 chown -R www-data:www-data /var/www/Codiad /var/log/apache2
 sed -i 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/Codiad/' /etc/apache2/sites-enabled/000*.conf
 sed -i "s/allow_url_fopen = Off/allow_url_fopen = On/" /etc/php5/apache2/php.ini
 sed -i "s/newrelic.enabled = On/newrelic.enabled = Off/" /etc/php5/apache2/php.ini
 sed -i "s/error_reporting = .*$/error_reporting = E_ERROR | E_WARNING | E_PARSE/" /etc/php5/apache2/php.ini
 rm -R /var/www/html/
 
 #to fix error relate to ip address of container apache2
 echo "ServerName localhost" | tee /etc/apache2/conf-available/fqdn.conf
 ln -s /etc/apache2/conf-available/fqdn.conf /etc/apache2/conf-enabled/fqdn.conf
