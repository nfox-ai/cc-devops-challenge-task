FROM alpine:latest

WORKDIR /app

ENV FLASK_APP=flask_app.py
ENV FLASK_RUN_PORT=5001
ENV FLASK_RUN_HOST=0.0.0.0

RUN apk update && \
    apk add python3 python3-dev py3-pip

COPY ./app/requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

EXPOSE 5001
COPY ./app /app

ENTRYPOINT ["flask", "run"]
