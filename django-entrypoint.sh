bash -c "source /home/myproject/env/bin/activate && python3 manage.py makemigrations && python3 manage.py migrate "
#bash -c "python3 manage.py makemigrations && python manage.py migrate"
bash -c "/home/myproject/env/bin/gunicorn --workers 3 --bind 0.0.0.0:8000 myproject.wsgi:application"