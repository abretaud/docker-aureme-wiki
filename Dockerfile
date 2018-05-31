FROM quay.io/abretaud/mediawiki
MAINTAINER Anthony Bretaudeau <anthony.bretaudeau@inra.fr>

ENV MEDIAWIKI_EXTENSION_REMOTE_USER_ENABLED=0

COPY aureme_logo.png /var/www/mediawiki/resources/assets/aureme_logo.png
COPY config/mediawiki/ExtraLocalSettings.php /var/www/mediawiki/ExtraLocalSettings.php
