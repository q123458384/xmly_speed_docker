FROM python:3.7-alpine
MAINTAINER Devil
RUN set -ex \
        && apk update && apk upgrade\
        && apk add --no-cache git tzdata \
        && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
        && echo "Asia/Shanghai" > /etc/timezone

RUN git clone --depth=1 https://github.com/q123458384/xmly_speed_docker.git /xmly-speed \
        && cd /xmly-speed \
        && mkdir logs \
        && pip install --no-cache-dir -r requirements.txt

RUN echo "*/30 * * * * python3 /xmly-speed/xmly_speed.py 1>/proc/1/fd/1 2>/proc/1/fd/2" > /crontab.list \
        && crontab -r \
        && crontab /crontab.list

WORKDIR /xmly-speed

CMD ["python", "/xmly-speed/xmly_speed.py"]
