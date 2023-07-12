FROM ubuntu:22.04

RUN apt-get update

# Set the timezone: Required when installing php
RUN apt-get install tzdata
RUN echo 'Europe/Stockholm' > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

# Install apache and php
RUN apt-get install -y apache2
RUN apt-get install -y php-common libapache2-mod-php php-cli

# Start the apache service in the foreground (required) when the container starts
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
