FROM nextcloud:apache

RUN apt-get update && apt-get install -y \
    smbclient \
    libsmbclient-dev \
    pkg-config \
    autoconf \
    gcc \
    make \
    && pecl install smbclient \
    && docker-php-ext-enable smbclient \
    && apt-get purge -y gcc make autoconf pkg-config \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*
