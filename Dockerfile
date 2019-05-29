FROM python:3.7-alpine3.8

RUN apk update && \
    apk add supervisor build-base linux-headers libffi-dev libxml2-dev libxslt-dev openssl-dev && \
    pip install zulip_bots

COPY supervisord.conf /etc/supervisord.conf

VOLUME ["/etc/supervisor.d", "/bots"]

CMD ["/usr/bin/supervisord"]
