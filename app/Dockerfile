FROM python:3.6

EXPOSE 5432

WORKDIR /app

COPY requirements.txt /app
COPY /templates /app/templates
COPY /static /app/static
COPY telegram_worker.py /app
COPY discogtool.py /app
COPY domain.cert.pem /app
COPY private.key.pem /app
COPY app.py /app
COPY sync.py /app
RUN pip install -r requirements.txt

CMD python app.py