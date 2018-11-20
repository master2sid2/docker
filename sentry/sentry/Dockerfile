FROM	debian:latest
RUN	apt-get update && \
	apt install -y --no-install-recommends python-setuptools \
	python-dev \
	libxslt1-dev \
	gcc \
	libffi-dev \
	libjpeg-dev \
	libxml2-dev \
	libxslt-dev \
	libyaml-dev \
	libpq-dev \
	python \
	python-pip \
	build-essential && \
	pip install wheel && \
	pip install -U sentry
RUN	sentry init /root/.sentry/ && \
        sed -i "s/'USER\': \'\'/\'USER\': \'sentry\'/g" /root/.sentry/sentry.conf.py && \
        sed -i "s/\'PASSWORD\': \'\'/\'PASSWORD\': \'12345678\'/g" /root/.sentry/sentry.conf.py && \
        sed -i "s/\'HOST\': \'\'/\'HOST\': \'postgres\'/g" /root/.sentry/sentry.conf.py && \
        sed -i "s/\'PORT\': \'\'/\'PORT\': \'5432\'/g" /root/.sentry/sentry.conf.py && \
        sed -i "s/host: 127.0.0.1/host: redis/g" /root/.sentry/config.yml && \
#	sentry upgrade
EXPOSE	9000
CMD	["sentry", "run", "web"]
