FROM	debian:latest AS build
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
	pip install wheel \
	virtualenv && \
	virtualenv /www/sentry/ && \
	pip install -U sentry

FROM	debian:latest
COPY	--from=build /www/sentry /
COPY	--from=build /bin/sh /bin/
#RUN	""
CMD	["sentry"]
