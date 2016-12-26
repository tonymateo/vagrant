apt-get -y install apache2
apt-get -y install git
rm -r /var/www
rm -r /vagrant/www
mkdir /vagrant/www
ln -s /vagrant/www /var/www
git clone https://github.com/tonymateo/vagrant.git /home/vagrant/config
cp /home/vagrant/config/sitio1.conf /etc/apache2/sites-available/sitio1.conf
cp /home/vagrant/config/sitio2.conf /etc/apache2/sites-available/sitio2.conf
a2ensite sitio1.conf
a2ensite sitio2.conf
a2enmod vhost_alias
service apache2 restart
cd /
git clone https://github.com/tonymateo/ej_1e_despliegue.git /var/www/sitio1
git clone https://github.com/tonymateo/ej_github.git /var/www/sitio2
