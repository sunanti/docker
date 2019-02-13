FROM ubuntu
MAINTAINER TuanTruong <sunanti2008@gmail.com>
#run update and install nginx, php-fpm and other useful libraries
RUN apt-get update -y && \
	apt-get install -y \
	php-fpm php-mysql
VOLUME F:\www\html
WORKDIR /var/www/html
EXPOSE 9000
CMD ["/usr/sbin/php7-fpm"]	