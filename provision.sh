sudo apt-get -y update
apt-get -y install apache2
apt-get -y install git
#Instalando mysql y estableciendo contraseña
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password vagrant'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password vagrant'
sudo apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql
# Instalando php
sudo apt-get -y install php5 libapache2-mod-php5 php5-mcrypt
sudo mkdir /var/www/symfony
git clone https://github.com/tonymateo/gestor_fct.git
