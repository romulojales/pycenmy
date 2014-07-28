from romulojales/centos

#intalling nginx

run yum upgrade -y

#get the official repo
run rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
run yum install nginx -y

#clean
add nginx.conf /etc/nginx/nginx.conf

run mkdir /var/www

run yum clean all -y

expose 80

#stating the deamons
cmd ["/usr/sbin/nginx"]



