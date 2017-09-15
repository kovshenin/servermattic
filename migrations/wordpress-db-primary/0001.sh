#!/bin/bash

# Setup MySQL
PATH=$PATH:/usr/local/mysql/bin/
ln -sf /etc/mysql-initscripts/mysql-5.6 /etc/init.d/mysql1-0

mkdir -p /var/log/mysql1-0
chown mysql.mysql /var/log/mysql1-0
cd /usr/local/mysql5.6/
./scripts/mysql_install_db --defaults-file=/etc/mysql/mysql1-0.cnf --user=mysql --datadir=/var/lib/mysql1-0 --force  --skip-name-resolve
chown -R mysql.mysql /var/lib/mysql1-0
/etc/init.d/mysql1-0 start
/usr/local/mysql/bin/mysqladmin --defaults-file=/etc/mysql/mysql1-0.cnf -u root password '9^Ng~$X?kWGytn3t'
mysql --defaults-file=/etc/mysql/mysql1-0.cnf -u root -sN  -p'9^Ng~$X?kWGytn3t' -e "create user 'wp'@'%' IDENTIFIED BY '24qTDLAH]hv2dM';"
mysql --defaults-file=/etc/mysql/mysql1-0.cnf -u root -sN  -p'9^Ng~$X?kWGytn3t' -e "create database wp;"
mysql --defaults-file=/etc/mysql/mysql1-0.cnf -u root -sN  -p'9^Ng~$X?kWGytn3t' -e "GRANT ALL ON wp.* TO 'wp'@'%';"
