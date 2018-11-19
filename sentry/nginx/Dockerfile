FROM	alpine:latest

RUN	apk add --update nginx && \
	mkdir -p /run/nginx/
COPY	default.conf /etc/nginx/conf.d

EXPOSE	8080
CMD	["nginx", "-g", "daemon off;"]

