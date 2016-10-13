#!/bin/bash

set -e
set -x

echo @a
set -- mysqld "$@"
chown -R mysql:mysql /var/lib/mysql
chown -R mysql:mysql /var/run/mysqld
echo "Checking to upgrade the schema"
echo "A failed upgrade is ok when there was no upgrade"
# mysql_upgrade || true
exec "$@"
