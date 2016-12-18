apt-get -y install apache2
apt-get -y install git
rm -r /var/www
rm -r /vagrant/www
mkdir /vagrant/www
ln -s /vagrant/www /var/www
git clone https://github.com/tonymateo/ej_1e_despliegue.git /var/www
