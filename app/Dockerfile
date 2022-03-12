FROM python:3.6

RUN apt-get update -yq && apt-get install -yq nodejs \
    && apt-get install -yq npm \
    && npm install quagga

EXPOSE 5432

WORKDIR /app

COPY requirements.txt /app
COPY /templates /app/templates
COPY /static /app/static
COPY discogtool.py /app
COPY app.py /app
COPY sync.py /app
RUN pip install -r requirements.txt

CMD python app.py