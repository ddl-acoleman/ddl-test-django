#!/usr/bin/env bash
cd $DOMINO_WORKING_DIR
sudo cp $DOMINO_WORKING_DIR/default /etc/nginx/sites-enabled/
sudo service nginx start

cd /mnt/mysite
gunicorn -b 0.0.0.0:55850 mysite.wsgi:application --log-level debug