#!/bin/bash

python manage.py migrate --noinput
gunicorn tienda.wsgi:application --bind 0.0.0.0:$PORT

chmod +x deploy.sh
