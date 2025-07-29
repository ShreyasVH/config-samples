FROM php:7.2.28-apache

# Patch outdated sources (Buster archived)
RUN sed -i 's|http://deb.debian.org/debian|http://archive.debian.org/debian|g' /etc/apt/sources.list && \
    sed -i 's|http://security.debian.org/debian-security|http://archive.debian.org/debian-security|g' /etc/apt/sources.list && \
    echo 'Acquire::Check-Valid-Until "false";' > /etc/apt/apt.conf.d/99no-check-valid-until

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libzip-dev \
    libmemcached-dev \
    zlib1g-dev \
    libpcre3-dev \
    libssl-dev \
    libicu-dev \
    pkg-config \
    libxml2-dev \
    && docker-php-ext-install zip intl pdo pdo_mysql

# Install Xdebug
RUN pecl install xdebug-2.9.8 && docker-php-ext-enable xdebug

# Install Redis
RUN pecl install redis-5.3.7 && docker-php-ext-enable redis

# Install Memcached
RUN pecl install memcached-3.1.5 && docker-php-ext-enable memcached

# Install Phalcon
RUN git clone --depth=1 --branch=3.4.x https://github.com/phalcon/cphalcon.git \
    && cd cphalcon/build \
    && ./install \
    && docker-php-ext-enable phalcon \
    && cd ../.. && rm -rf cphalcon

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Cleanup
RUN apt-get clean && rm -rf /var/lib/apt/lists/*