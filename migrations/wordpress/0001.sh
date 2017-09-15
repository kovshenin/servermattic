#!/bin/bash
/usr/sbin/service nginx reload
wget https://wordpress.org/latest.tar.gz -O /tmp/wordpress-latest.tar.gz
tar -xf /tmp/wordpress-latest.tar.gz -C /usr/local/wordpress --strip-components=1
