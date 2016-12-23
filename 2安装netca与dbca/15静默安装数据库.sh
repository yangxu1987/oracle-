#!/bin/bash

#静默安装数据库
#修改仅安装数据库的响应文件/home/oracle/etc/dbca.rsp
sed -i '78s/GDBNAME = "orcl11g.us.oracle.com"/GDBNAME="orcl.localhost"/g' /home/oracle/etc/dbca.rsp
sed -i '149s/SID = "orcl11g"/SID="orcl"/g' /home/oracle/etc/dbca.rsp
sed -i '415s/CHARACTERSET = "US7ASCII"/CHARACTERSET="AL32UTF8"/g' /home/oracle/etc/dbca.rsp
#sed -i 'NATIONALCHARACTERSET="UTF8" //425行 编码
