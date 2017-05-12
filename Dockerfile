FROM silintl/php7
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y php7.0-bcmath

# Copy an Apache vhost file into sites-enabled. This should map
# the document root to whatever is right for your app
#COPY vhost-config.conf /etc/apache2/sites-enabled/

ADD apache-config.conf /etc/apache2/sites-enabled/000-default.conf
ADD php.ini /etc/php5/apache2

EXPOSE 80
