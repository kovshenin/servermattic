#!/bin/bash

# Setup MySQL
PATH=$PATH:/usr/local/mysql/bin/
ln -sf /etc/mysql-initscripts/mysql-5.6 /etc/init.d/mysql1-1

mkdir -p /var/log/mysql1-1
chown mysql.mysql /var/log/mysql1-1
cd /usr/local/mysql5.6/
./scripts/mysql_install_db --defaults-file=/etc/mysql/mysql1-1.cnf --user=mysql --datadir=/var/lib/mysql1-1 --force  --skip-name-resolve
chown -R mysql.mysql /var/lib/mysql1-1
/etc/init.d/mysql1-1 start
/usr/local/mysql/bin/mysqladmin --defaults-file=/etc/mysql/mysql1-1.cnf -u root password '9^Ng~$X?kWGytn3t'
mysql --defaults-file=/etc/mysql/mysql1-1.cnf -u root -sN  -pgod -e "create user 'wp'@'localhost' IDENTIFIED BY '24qTDLAH]hv2dM';"
mysql --defaults-file=/etc/mysql/mysql1-1.cnf -u root -sN  -pgod -e "create database wp;"
mysql --defaults-file=/etc/mysql/mysql1-1.cnf -u root -sN  -pgod -e "GRANT ALL ON wp.* TO 'wp'@'localhost';"
