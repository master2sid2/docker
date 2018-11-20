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
	pip install -U sentry && \
	sentry init /root/.sentry/
COPY	./sentry /root/.sentry/
RUN	sentry upgrade --noinput && \
	sentry createuser --no-input --email test@test.com --superuser --no-password
EXPOSE	9000
CMD	["/root/.sentry/setup.sh]
