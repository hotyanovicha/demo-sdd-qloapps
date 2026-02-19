FROM php:8.2-apache

# Install dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libzip-dev \
    libicu-dev \
    libxml2-dev \
    unzip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd pdo_mysql zip intl soap mysqli

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Allow .htaccess overrides (required for QloApps URL routing)
RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

# Set working directory
WORKDIR /var/www/html

# Copy application code
COPY QloApps/ /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html \
    && find /var/www/html -type d -exec chmod 755 {} \; \
    && find /var/www/html -type f -exec chmod 644 {} \;

# Fix img/.htaccess: replace blanket "Require all denied" (Apache 2.4) with
# "Options -Indexes" so Apache can traverse img/p/N/ subdirectories for URL
# rewriting while still preventing directory listing and PHP execution.
RUN printf \
    '# Apache 2.2\n'\
    '<IfModule !mod_authz_core.c>\n'\
    '    Order deny,allow\n'\
    '    Deny from all\n'\
    '    <Files ~ "(?i)^.*\\.(jpg|jpeg|gif|png|bmp|tiff|svg|pdf|mov|mpeg|mp4|avi|mpg|wma|flv|webm|ico|webp|avif)$">\n'\
    '        Allow from all\n'\
    '    </Files>\n'\
    '</IfModule>\n'\
    '\n'\
    '# Apache 2.4\n'\
    '<IfModule mod_authz_core.c>\n'\
    '    Options -Indexes\n'\
    '    <FilesMatch "(?i)\\.(php[0-9]?|phtml|pl|py|jsp|asp|cgi|sh)$">\n'\
    '        Require all denied\n'\
    '    </FilesMatch>\n'\
    '</IfModule>\n' \
    > /var/www/html/img/.htaccess

# Use the default production configuration
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

