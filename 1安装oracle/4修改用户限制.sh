#!/bin/bash


#修改用户限制
#/etc/security/limits.conf
#oracle soft nproc 2047
#oracle hard nproc 16384
#oracle soft nofile 1024
#oracle hard nofile 65536
#oracle soft stack 10240
echo "oracle soft nproc 2047" >> /etc/security/limits.conf
echo "oracle hard nproc 16384" >> /etc/security/limits.conf
echo "oracle soft nofile 1024" >> /etc/security/limits.conf
echo "oracle hard nofile 65536" >> /etc/security/limits.conf
echo "oracle soft stack 10240" >> /etc/security/limits.conf

#/etc/pam.d/login 
#session required /lib/security/pam_limits.so
#session required pam_limits.so
#
#echo "session required /lib/security/pam_limits.so" >> /etc/pam.d/login
echo "session required pam_limits.so" >> /etc/pam.d/login

#/etc/profile 
#if [ $USER = "oracle" ]; then
#if [ $SHELL = "/bin/ksh" ]; then
#ulimit -p 16384
#ulimit -n 65536
#else
#ulimit -u 16384 -n 65536
#fi
#fi

echo 'if [ $USER = "oracle" ]; then' >> /etc/profile 
echo 'if [ $SHELL = "/bin/ksh" ]; then' >> /etc/profile 
echo 'ulimit -p 16384' >> /etc/profile 
echo 'ulimit -n 65536' >> /etc/profile 
echo 'else' >> /etc/profile 
echo 'ulimit -u 16384 -n 65536' >> /etc/profile 
echo 'fi' >> /etc/profile 
echo 'fi' >> /etc/profile 
source /etc/profile
