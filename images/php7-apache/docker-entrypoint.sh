#!/bin/sh

cd /var/www/html

FILE=composer.phar
if [ find $FILE ]; then
    echo "composer has already ran"
else
    echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    php composer-setup.php

    echo "chowning /var/www/html/storage/ for www-data"
    chown -R www-data:www-data /var/www/html/storage/
    touch $FILE
fi



#npm=/tmp/npm.ran
#if [ -f $npm ]; then
#    echo "npm commands already ran"
#else
#    npm install git+https://$NPM_AUTH:x-oauth-basic@github.com/Timeless-Medical-International/tms-ui#master
#    npm install
#    npm run dev
#    touch $npm
#fi

#index=/var/www/html/index.html
#if [ -f $index ]; then
#    #rm $index
#    echo "removed $index"
#else
#    echo "$index already removed"
#fi

exec /usr/sbin/apache2ctl -DFOREGROUND