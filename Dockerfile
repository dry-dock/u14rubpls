FROM drydock/u14rub:prod

ADD . /tmp

RUN /tmp/install.sh && rm -rf /tmp
