#!/bin/bash

cd code
while ! [ -f manage.py ]
do
    echo "waiting for jenkins"
    sleep 20
done
python manage.py makemigrations projects
python manage.py migrate projects
python manage.py makemigrations blog
python manage.py migrate

python manage.py runserver 0.0.0.0:8000 