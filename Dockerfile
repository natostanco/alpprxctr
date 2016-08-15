FROM quay.io/natostanco/alppytctr

RUN apk --update --no-cache add gcc musl-dev git \
 && pip3 install -U git+https://github.com/constverum/ProxyBroker.gi \
 && apk del gcc musl-dev git \
 && rm /var/cache/apk/*

ENTRYPOINT ["sh"]
