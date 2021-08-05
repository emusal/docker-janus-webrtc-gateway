yum install -y nginx
echo 'include /etc/nginx/default.d/*.conf;' >> /etc/nginx/nginx.conf
mkdir /etc/nginx/site-available
cp /home/conf/nginx.conf /etc/nginx/.
cp /home/conf/nginx.janus.conf /etc/nginx/site-available/janus.conf
ln -s /etc/nginx/site-available /etc/nginx/site-enabled
