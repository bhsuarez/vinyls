FROM python:3.6

EXPOSE 5432

WORKDIR /app

COPY requirements.txt /app
COPY /templates /app/templates
COPY /static /app/static
RUN pip install -r requirements.txt

COPY app.py /app
CMD python app.py