FROM python:3.6

EXPOSE 5432

WORKDIR /app

COPY requirements.txt /app
COPY /templates /app/templates
COPY /static /app/static
COPY discogs_client /app/discogclient
COPY discogtool.py /app
COPY jukebox.py /app
COPY postgresconnector.py /app
RUN pip install -r requirements.txt


CMD python jukebox.py