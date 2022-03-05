FROM python:3.6

EXPOSE 5432

WORKDIR /app

COPY requirements.txt /app
COPY /templates /app/templates
COPY /static /app/static
COPY discogtool.py /app
COPY app.py /app
COPY postgresconnector.py /app
RUN pip install -r requirements.txt

CMD python app.py