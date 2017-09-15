#!/bin/bash
/usr/sbin/service nginx reload
wget https://wordpress.org/latest.tar.gz -O /tmp/wordpress-latest.tar.gz
tar -xf /tmp/wordpress-latest.tar.gz -C /var/www/wordpress --strip-components=1
rm /tmp/wordpress-latest.tar.gz
