#修改oracle启动配置文件
su - oracle
sed -i 's/racl\:\/u01\/app\/oracle\/product\/11.2.0\/db_1\:Y/racl\:\/u01\/app\/oracle\/product\/11.2.0\/db_1\:N/g' /etc/oratab