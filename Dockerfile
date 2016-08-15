FROM python:3.6-alpine

MAINTAINER Yuri Vysotskiy (yfix) <yfix.dev@gmail.com>

RUN apk add --no-cache \
    inotify-tools \
    supervisor \
    curl

RUN mkdir -p /app

COPY docker /

# ONBUILD COPY requirements.txt /app/
# ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# ONBUILD COPY . /app

WORKDIR /app

# CMD ["supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]
CMD ["python3"]
