Galera Cluster
==============

How to start
------------
docker run \
  -d \
  -p 3306:3306 \
  -p 4567:4567 \
  -p 4444:4444 \
  -p 4568:4568 \
  -v <LOCATION-LOCAL-MYSQL-DATA>:/var/lib/mysql \
  --name <NODENAME> \
  --restart=always \
  providernl/galera \
  --wsrep-cluster-address=gcomm://<EMPTY FOR MASTER / MASTER-NODE-IP> \
  --wsrep-node-address=<NODE-IP>

Datamount
---------
/var/lib/mysql
