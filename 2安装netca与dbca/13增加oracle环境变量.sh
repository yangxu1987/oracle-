#!/bin/bash

#增加oracle环境变量
#su - oracle
#.bash_profile
cat 12.txt >> /home/oracle/.bash_profile
source /home/oracle/.bash_profile
su - oracle
