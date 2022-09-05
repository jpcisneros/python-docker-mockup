FROM python:3.9-bullseye

EXPOSE 8000

WORKDIR /app

RUN apt-get update && apt-get -y upgrade && apt-get -y install default-mysql-client netcat inetutils-ping && \
    pip install django


COPY --chown=1000:1000 ./code /app

USER 1000
CMD ["python3", "-u", "/app/run.py"] # here the -u flag makes the stdout to be
                                     # unbuffered and thus it will show the
                                     # print statements right away.

