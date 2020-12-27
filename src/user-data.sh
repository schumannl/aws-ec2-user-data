#!/bin/bash
yum update -y
yum install -y git
amazon-linux-extras install -y php7.3
yum install php-mbstring -y
yum install mc -y
export COMPOSER_HOME=/home/ec2-user
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --install-dir=/usr/local/bin --filename=composer --version=1.10.9
php -r "unlink('composer-setup.php');"
ln -s /usr/local/bin/composer /usr/bin/composer
amazon-linux-extras install -y docker
usermod -a -G docker ec2-user
service docker start
curl -L https://github.com/docker/compose/releases/download/1.27.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose