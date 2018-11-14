FROM	alpine:latest
#ENV	DB_HOST=mysql \
#	DB_DATABASE=wordpress \
#	DB_USER=wordpress \
#	DB_PASS=12345678

RUN	apk add --update nginx && \
	mkdir -p /run/nginx/ && \
	wget -P /tmp/ https://wordpress.org/latest.tar.gz && \
	tar -zxvf /tmp/latest.tar.gz -C /var/www/ && \
	rm /tmp/latest.tar.gz && \
	mv /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php && \
	sed -i 's/database_name_here/wordpress/g' /var/www/wordpress/wp-config.php && \
        sed -i 's/username_here/wordpress/g' /var/www/wordpress/wp-config.php && \
        sed -i 's/password_here/12345678/g' /var/www/wordpress/wp-config.php && \
        sed -i 's/localhost/mysql/g' /var/www/wordpress/wp-config.php
WORKDIR /var/www/wordpress
COPY	default.conf /etc/nginx/conf.d

EXPOSE	8008
CMD	["nginx", "-g", "daemon off;"]
