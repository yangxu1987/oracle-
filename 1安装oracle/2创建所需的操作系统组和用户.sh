#!/bin/bash
##创建所需的操作系统组和用户
groupadd oinstall
groupadd dba
useradd -g oinstall -G dba oracle
echo "oracle password"
passwd oracle
