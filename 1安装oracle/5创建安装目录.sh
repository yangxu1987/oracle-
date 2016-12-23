#!/bin/bash
#创建安装目录
mkdir -p /u01/app/
chown -R oracle:oinstall /u01/app/
chmod -R 775 /u01/app/

#/etc/oraInst.loc
touch /etc/oraInst.loc
echo "nventory_loc=/u01/app/oracle/oraInventory" >> /etc/oraInst.loc
echo "inst_group=oinstall" >> /etc/oraInst.loc
