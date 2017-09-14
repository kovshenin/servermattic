#!/bin/bash
/usr/sbin/service nginx reload
wget https://wordpress.org/latest.tar.gz -O /tmp/wordpress-latest.tar.gz
tar -xf /tmp/wordpress-latest.tar.gz -C /usr/local/wordpress --strip-components=1

# Setup MySQL
ln -sf /etc/mysql-initscripts/mysql-5.6 /etc/init.d/mysql1-0
ln -sf /usr/local/mysql-latest /usr/local/mysql
PATH=$PATH:/usr/local/mysql/bin/

mkdir -p /var/log/mysql1-0
chown mysql.mysql /var/log/mysql1-0
cd /usr/local/mysql5.6/
./scripts/mysql_install_db --defaults-file=/etc/mysql/mysql1-0.cnf --user=mysql --datadir=/var/lib/mysql1-0 --force  --skip-name-resolve
chown -R mysql.mysql /var/lib/mysql1-0
/etc/init.d/mysql1-0 start
/usr/local/mysql/bin/mysqladmin --defaults-file=/etc/mysql/mysql1-0.cnf -u root password 'god'
mysql --defaults-file=/etc/mysql/mysql1-0.cnf -u root -sN  -pgod -e "create user 'wp'@'localhost' IDENTIFIED BY 'drupal';"
mysql --defaults-file=/etc/mysql/mysql1-0.cnf -u root -sN  -pgod -e "GRANT ALL ON wp.* TO 'wp'@'localhost';"
