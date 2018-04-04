FROM alpine:latest

# Update and install packages
RUN apk update
RUN apk add --no-cache \
    php7 \
    curl \
    wget \
    zsh \
    git \
    sudo
RUN rm -fr /var/cache/apk/* \

# Add symlinks.
RUN ln -s /usr/bin/php7 /usr/bin/php

# Install composer.
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

# Put a turbo on composer.
RUN composer global require hirak/prestissimo

COPY composer.json /opt/behat/composer.json

# Install Behat
RUN cd /opt/behat && composer install 2>&1

ENV PATH $PATH:/opt/behat/bin

WORKDIR /src

ENTRYPOINT ["behat"]
