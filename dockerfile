FROM python:3.10.0-alpine3.15

WORKDIR /firstApp

COPY /requirements.txt /firstApp

RUN pip install -r requirements.txt

COPY . /firstApp

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]