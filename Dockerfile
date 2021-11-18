FROM python:3.8-slim-buster
WORKDIR /app
COPY requirements.txt requirements.txt
COPY entrypoint.sh entrypoint.sh
RUN pip3 install -r requirements.txt
RUN chmod +x entrypoint.sh
RUN pip install --upgrade pip
COPY . .
#CMD python manage.py runserver 0.0.0.0:8000
ENTRYPOINT ["/app/entrypoint.sh"]