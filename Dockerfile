FROM ubuntu:16.04
MAINTAINER Aleksey @soar Smyrnov (//soar.name)

# Upgrage packages
RUN apt-get update \
	&& apt-get -yqq upgrade \
	&& rm -rf /var/lib/apt/lists/*
	
# Install packages
RUN apt-get update \
	&& apt-get -yqq install \
		firefox \
		fontconfig \
		fonts-ipafont-gothic \
		openjdk-9-jre-headless \
		xfonts-cyrillic \
		xfonts-scalable \
		xfonts-75dpi \
		xfonts-100dpi \
		xvfb \
	&& rm -rf /var/lib/apt/lists/*

# See http://selenium-release.storage.googleapis.com/ for available versions
RUN mkdir -p /opt/selenium
ADD ./selenium/selenium-server-standalone-3.0.1.jar /opt/selenium/selenium-server-standalone.jar

# Additional parameters
ENV SELENIUM_PARAMS ""

# Startup
EXPOSE 4444
CMD xvfb-run -a --server-args='-screen 0 800x600x24' java -jar /opt/selenium/selenium-server-standalone.jar ${SELENIUM_PARAMS}
