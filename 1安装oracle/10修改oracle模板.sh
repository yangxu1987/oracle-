#!/bin/bash
#修改oracle模板

#su - oracle
#/home/oracle/etc/db_install.rsp
#oracle.install.option=INSTALL_DB_SWONLY //29 行 安装类型
#ORACLE_HOSTNAME=localhost //37 行 主机名称
#UNIX_GROUP_NAME=oinstall //42 行 安装组
#INVENTORY_LOCATION=/u01/app/oracle/oraInventory //47 行 INVENTORY目录
#SELECTED_LANGUAGES=en,zh_CN,zh_TW //78 行 选择语言
#ORACLE_HOME=/u01/app/oracle/product/11.2.0/db_1 //83 行 oracle_home
#ORACLE_BASE=/u01/app/oracle //88 行 oracle_base
#oracle.install.db.InstallEdition=EE //99 行 oracle版本
#oracle.install.db.isCustomInstall=true //108行 自定义安装
#oracle.install.db.DBA_GROUP=dba //142行 dba用户组
#oracle.install.db.OPER_GROUP=oinstall //147行 oper用户组
#oracle.install.db.config.starterdb.type=GENERAL_PURPOSE //160行 数据库类型
#oracle.install.db.config.starterdb.globalDBName=orcl //165行 globalDBName
#oracle.install.db.config.starterdb.SID=orcl //170行 SID
#oracle.install.db.config.starterdb.memoryLimit=512 //200行 自动管理内存的最小内存(M)
#oracle.install.db.config.starterdb.password.ALL=oracle //233行 设定所有数据库用户使用同一个密码
#DECLINE_SECURITY_UPDATES=true //385行 设置安全更新
sed -i '29s/oracle.install.option=/oracle.install.option=INSTALL_DB_SWONLY/g' /home/oracle/etc/db_install.rsp
sed -i '37s/ORACLE_HOSTNAME=/ORACLE_HOSTNAME=localhost/g' /home/oracle/etc/db_install.rsp
sed -i '42s/UNIX_GROUP_NAME=/UNIX_GROUP_NAME=oinstall/g' /home/oracle/etc/db_install.rsp
sed -i '47s/INVENTORY_LOCATION=/INVENTORY_LOCATION=\/u01\/app\/oracle\/oraInventory/g' /home/oracle/etc/db_install.rsp
sed -i '78s/SELECTED_LANGUAGES=/SELECTED_LANGUAGES=en,zh_CN,zh_TW/g' /home/oracle/etc/db_install.rsp
sed -i '83s/ORACLE_HOME=/ORACLE_HOME=\/u01\/app\/oracle\/product\/11.2.0\/db_1/g' /home/oracle/etc/db_install.rsp
sed -i '88s/ORACLE_BASE=/ORACLE_BASE=\/u01\/app\/oracle/g' /home/oracle/etc/db_install.rsp
sed -i '99s/oracle.install.db.InstallEdition=/oracle.install.db.InstallEdition=EE/g' /home/oracle/etc/db_install.rsp
sed -i '108s/oracle.install.db.isCustomInstall=false/oracle.install.db.isCustomInstall=true/g' /home/oracle/etc/db_install.rsp
sed -i '142s/oracle.install.db.DBA_GROUP=/oracle.install.db.DBA_GROUP=dba/g' /home/oracle/etc/db_install.rsp
sed -i '147s/oracle.install.db.OPER_GROUP=/oracle.install.db.OPER_GROUP=oinstall/g' /home/oracle/etc/db_install.rsp
sed -i '160s/oracle.install.db.config.starterdb.type=/oracle.install.db.config.starterdb.type=GENERAL_PURPOSE/g' /home/oracle/etc/db_install.rsp
sed -i '165s/oracle.install.db.config.starterdb.globalDBName=/oracle.install.db.config.starterdb.globalDBName=orcl/g' /home/oracle/etc/db_install.rsp
sed -i '170s/oracle.install.db.config.starterdb.SID=/oracle.install.db.config.starterdb.SID=orcl/g' /home/oracle/etc/db_install.rsp
sed -i '200s/oracle.install.db.config.starterdb.memoryLimit=/oracle.install.db.config.starterdb.memoryLimit=512/g' /home/oracle/etc/db_install.rsp
sed -i '233s/oracle.install.db.config.starterdb.password.ALL=/oracle.install.db.config.starterdb.password.ALL=oracle/g' /home/oracle/etc/db_install.rsp
sed -i '385s/DECLINE_SECURITY_UPDATES=/DECLINE_SECURITY_UPDATES=true/g' /home/oracle/etc/db_install.rsp
