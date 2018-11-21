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
ENTRYPOINT	["/root/.sentry/setup.sh"]
EXPOSE	9000
CMD	["sentry", "run", "web"]
