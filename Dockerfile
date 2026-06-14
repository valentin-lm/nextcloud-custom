FROM nextcloud:apache

RUN apt-get update \
 && apt-get install -y \
    smbclient \
    libsmbclient-dev \
    libkrb5-dev \
    gcc \
    make \
    autoconf \
    pkg-config \
 && pecl install smbclient \
 && docker-php-ext-enable smbclient \
 && rm -rf /var/lib/apt/lists/*
