# MySQL

### 1.Linux下安装MySql

1. MySQL官网下载**RPM Bundle**(mysql-8.0.33-1.el7.x86_64.rpm-bundle.tar)
2. 本地解压或Linux下　tar -zxvf　解压
3. 查询是否有mariadb-libs　rpm -qa | grep mariadb　卸载mariadb-libs　　rpm -e mariadb-libs
4. 依次安装common-version、client-plugins-version(5.7不需要安装)、libs-version、client-v、server-8.0

　　如 rpm -ivh mysql-community-common-8.0【.25-1.el7.x86_64.rpm

 　5.　systemctl　start　msyqld　启动MySQL服务
 　6.　cat　/var/log/mysqld.log　| grep password　查看临时密码
 　7.　mysql -uroot -p　输入密码登录
 　8.　ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_password'；设置密码

###用户管理

不写host默认 user@%
创建用户：create user identified by "password";
删除用户：drop user user；
修改用户：update user set user="new_name" where user=user;
修改当前用户密码:
1.alter user user() identified by "new_password";
2.set password="new_password";
修改其他用户名密码：
1.alter user user identified by "new_password";
2.set password for user="new_password"
**注意只写user 默认为 user@% 如 set password for root = "root";===>set password for root@% = "root";

###权限管理
show privileges;查看MySQL所有权限
show grants; 查看当前用户权限
show grants for user；查看其他用户权限
grant privileges on database.table to user          授权
revoke privileges on database.table from user    撤回权限

###角色管理
create role "role_name"[@'host_name']; 创建角色
grant privileges on database.table to role_name; 角色授权
show grants for role_name;
revoke privileges on database.table from role_name 撤回权限
drop role role;
grant role to user@host; 给用户赋予角色
show grants for user@host;查看是否添加成功，SQL语句如下。
select current_role(); 查询当前角色，如果角色未激活，结果将显示NONE。

###激活角色

set default role all to user@host; 
撤销用户的角色
revoke role from user@host;



##TEST

![](img\mn.jpg)



asdasdasd
