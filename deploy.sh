#!/bin/bash

python manage.py migrate --noinput
gunicorn tu_proyecto.wsgi:application --bind 0.0.0.0:$PORT

chmod +x deploy.sh
