#!/bin/bash

#设置oracle环境变量
#su - oracle
echo "export ORACLE_BASE=/u01/app/oracle" >> /home/oracle/.bash_profile
echo "export ORACLE_SID=orcl" >> /home/oracle/.bash_profile
source /home/oracle/.bash_profile

