#!/bin/bash
/usr/sbin/service nginx reload

# Setup MySQL
ln -sf /usr/local/mysql-latest /usr/local/mysql
PATH=$PATH:/usr/local/mysql/bin/

