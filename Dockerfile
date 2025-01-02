# Use the official PHP image with Apache
FROM php:8.2-apache

# Install necessary PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set the working directory in the container
WORKDIR /var/www/html

# Copy application files to the container
COPY ./src /var/www/html

# Set file permissions
# RUN chown -R www-data:www-data /var/www/html

# Expose the default Apache port
EXPOSE 80