apt-get -y install apache2
apt-get -y install git
git clone https://github.com/tonymateo/ej_1e_despliegue.git /var/www/sitio1
git clone https://github.com/tonymateo/ej_github.git /var/www/sitio2
git clone https://github.com/tonymateo/vagrant.git /home/vagrant/config
mv /home/vagrant/config/sitio1.conf /etc/apache2/sites-available/sitio1.conf
mv /home/vagrant/config/sitio2.conf /etc/apache2/sites-available/sitio2.conf
a2ensite sitio1.conf
a2ensite sitio2.conf
a2enmod vhost_alias
service apache2 restart
