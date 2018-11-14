FROM	alpine:latest
ENV	DB_HOST=mysql \
	DB_DATABASE=wordpress \
	DB_USER=wordpress \
	DB_PASS=12345678

RUN	apk add --update nginx && \
	mkdir -p /run/nginx/ && \
	wget -P /tmp/ https://wordpress.org/latest.tar.gz && \
	tar -zxvf /tmp/latest.tar.gz -C /var/www/ && \
	rm /tmp/latest.tar.gz
WORKDIR /var/www/wordpress
COPY	wp-config.php .
COPY	default.conf /etc/nginx/conf.d

EXPOSE	8008
CMD	["nginx", "-g", "daemon off;"]

