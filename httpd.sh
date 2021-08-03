yum install -y httpd
cp ./httpd.conf /etc/httpd/conf/.
mkdir /etc/httpd/sites-available /etc/httpd/sites-enabled
cp ./000-default.conf /etc/httpd/sites-available
ln -s /etc/httpd/sites-available/000-default.conf /etc/httpd/sites-enabled/000-default.conf
