FROM quay.io/abretaud/mediawiki
MAINTAINER Anthony Bretaudeau <anthony.bretaudeau@inra.fr>

ENV MEDIAWIKI_EXTENSION_REMOTE_USER_ENABLED=0

# Install composer
RUN curl -o /tmp/composer-setup.php https://getcomposer.org/installer \
    && curl -o /tmp/composer-setup.sig https://composer.github.io/installer.sig \
    && php -r "if (hash('SHA384', file_get_contents('/tmp/composer-setup.php')) !== trim(file_get_contents('/tmp/composer-setup.sig'))) { unlink('/tmp/composer-setup.php'); echo 'Invalid installer' . PHP_EOL; exit(1); }" \
    && php /tmp/composer-setup.php --no-ansi --install-dir=/usr/local/bin --filename=composer --snapshot \
    && rm -f /tmp/composer-setup.*

RUN composer require mediawiki/semantic-media-wiki "~2.5" --update-no-dev

COPY aureme_logo.png /var/www/mediawiki/resources/assets/aureme_logo.png
COPY config/mediawiki/ExtraLocalSettings.php /var/www/mediawiki/ExtraLocalSettings.php

COPY docker-entrypoint.sh /docker-entrypoint.sh
