FROM centos:centos7

MAINTAINER Rômulo Jales <romulo@romulojales.com>

#Installing things

run yum upgrade -y
run yum install mariadb-server -y
run rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
run yum install nginx -y

#clean

add nginx.conf /etc/nginx/nginx.conf

run yum clean all -y

expose 80

#stating the deamons
cmd ["/usr/bin/mysqld_safe"]
cmd ["/usr/sbin/nginx"]


